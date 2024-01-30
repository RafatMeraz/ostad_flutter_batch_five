import 'package:flutter/material.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _codeTEController = TextEditingController();
  final TextEditingController _unitPriceTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameTEController,
                  decoration: const InputDecoration(
                      hintText: 'Product name', labelText: 'Product name'),
                  // TODO : Make this validator reusable
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Enter your product name';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _codeTEController,
                  decoration: const InputDecoration(
                    hintText: 'Product code',
                    labelText: 'Product code',
                  ),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Enter your product code';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _unitPriceTEController,
                  decoration: const InputDecoration(
                      hintText: 'Unit price', labelText: 'Unit price'),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Enter your product unit price';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _quantityTEController,
                  decoration: const InputDecoration(
                      hintText: 'Enter Quantity', labelText: 'Quantity'),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Enter your quantity';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _totalPriceTEController,
                  decoration: const InputDecoration(
                      hintText: 'Total price', labelText: 'Total price'),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Enter your total price';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _imageTEController,
                  decoration: const InputDecoration(
                    hintText: 'Image',
                    labelText: 'Image',
                  ),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Enter your product image';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: const Text('Add'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
