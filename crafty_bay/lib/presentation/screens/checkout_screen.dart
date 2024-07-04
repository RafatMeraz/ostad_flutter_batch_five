import 'package:crafty_bay/presentation/screens/payment_webview_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildPriceRow('Sub-Total', '1230993'),
            _buildPriceRow('VAT', '1230993'),
            _buildPriceRow('Total', '1230993'),
            _buildSolidSeparator(),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Get.to(
                      () => const PaymentWebViewScreen(url: 'https://dart.dev'),
                    );
                  },
                  leading: const Icon(Icons.border_inner_rounded),
                  title: const Text('Payment method'),
                  trailing: const Icon(Icons.arrow_forward),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSolidSeparator() {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(width: .5, color: Colors.black26),
      ),
    );
  }

  Widget _buildPriceRow(String title, String amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(
          amount,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
