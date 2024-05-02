import 'package:crafty_bay/presentation/screens/otp_verification_screen.dart';
import 'package:crafty_bay/presentation/utility/app_colors.dart';
import 'package:crafty_bay/presentation/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SizedBox(height: 100),
                const AppLogo(),
                const SizedBox(height: 16),
                Text('Welcome Back', style: textTheme.headlineLarge),
                const SizedBox(height: 4),
                Text('Please Enter Your Email Address',
                    style: textTheme.headlineSmall),
                const SizedBox(height: 24),
                TextFormField(
                  controller: _emailTEController,
                  decoration: const InputDecoration(
                    hintText: 'Email'
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Get.to(
                      () => OtpVerificationScreen(email: _emailTEController.text),
                    );
                  },
                  child: const Text('Next'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    super.dispose();
  }
}
