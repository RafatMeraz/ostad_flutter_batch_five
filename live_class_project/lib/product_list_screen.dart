import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:live_class_project/add_new_product_screen.dart';
import 'package:live_class_project/edit_product_screen.dart';
import 'package:http/http.dart';
import 'package:live_class_project/product.dart';

enum PopupMenuType { edit, delete }

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<Product> productList = [];
  bool _getProductListInProgress = false;

  @override
  void initState() {
    super.initState();
    getProductListFromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product list'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          getProductListFromApi();
        },
        child: Visibility(
          visible: _getProductListInProgress == false,
          replacement: const Center(child: CircularProgressIndicator()),
          child: ListView.builder(
            itemCount: productList.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(productList[index].image ?? ''),
                ),
                title: Text(productList[index].productName ?? 'Unknown'),
                subtitle: Wrap(
                  spacing: 16,
                  children: [
                    Text('Product code ${productList[index].productCode ?? 'Unknown'}'),
                    Text('Unit price ${productList[index].unitPrice ?? 'Unknown'}'),
                    Text('Total price ${productList[index].totalPrice ?? 'Unknown'}'),
                    Text('Quantity ${productList[index].quantity ?? 'Unknown'}'),
                  ],
                ),
                trailing: PopupMenuButton<PopupMenuType>(
                  onSelected: onTapPopUpMenuButton,
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: PopupMenuType.edit,
                      child: Row(
                        children: [
                          Icon(Icons.edit),
                          SizedBox(
                            width: 8,
                          ),
                          Text('Edit'),
                        ],
                      ),
                    ),
                    const PopupMenuItem(
                      value: PopupMenuType.delete,
                      child: Row(
                        children: [
                          Icon(Icons.delete_outline),
                          SizedBox(
                            width: 8,
                          ),
                          Text('Delete'),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNewProductScreen(),
            ),
          );
        },
        icon: const Icon(Icons.add),
        label: const Text('Add'),
      ),
    );
  }

  void onTapPopUpMenuButton(PopupMenuType type) {
    switch (type) {
      case PopupMenuType.edit:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EditProductScreen(),
          ),
        );
        break;
      case PopupMenuType.delete:
        _showDeleteDialog();
        break;
    }
  }

  void _showDeleteDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Delete Product'),
            content:
                const Text('Are you sure that you want to delete this product'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Yes, Delete',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          );
        });
  }

  Future<void> getProductListFromApi() async {
    _getProductListInProgress = true;
    setState(() {});
    // Step 1 - Make URI
    Uri uri = Uri.parse('https://crud.teamrabbil.com/api/v1/ReadProduct');
    // Step 2 - Call api
    Response response = await get(uri);
    // Step 3 - show Response
    print(response);
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      productList.clear();
      var decodedResponse = jsonDecode(response.body);
      if (decodedResponse['status'] == 'success') {
        var list = decodedResponse['data'];
        for (var item in list) {
          Product product = Product.fromJson(item);
          productList.add(product);
        }
      }
    }
    _getProductListInProgress = false;
    setState(() {});
  }
}
