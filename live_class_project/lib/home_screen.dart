import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _numberOneTEController = TextEditingController();
  final TextEditingController _numberTwoTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  double _result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Sum Calculator',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _numberOneTEController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Number One'),
                validator: (String? value) {
                  String v = value ?? '';
                  if (v.isEmpty) {
                    return 'Enter number one'; // invalid
                  }
                  return null; //  valid
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _numberTwoTEController,
                decoration: const InputDecoration(hintText: 'Number Two'),
                validator: (String? value) {
                  String v = value ?? '';
                  if (v.isEmpty) {
                    return 'Enter number two';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double numOne = double.tryParse(
                                  _numberOneTEController.text.trim()) ??
                              0;
                          double numTwo = double.tryParse(
                                  _numberTwoTEController.text.trim()) ??
                              0;
                          double result = add(numOne, numTwo);
                          _result = result;
                          setState(() {});
                        }
                      },
                      child: const Text('Add'),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double numOne = double.tryParse(
                                  _numberOneTEController.text.trim()) ??
                              0;
                          double numTwo = double.tryParse(
                                  _numberTwoTEController.text.trim()) ??
                              0;
                          double result = subs(numOne, numTwo);
                          _result = result;
                          setState(() {});
                        }
                      },
                      child: const Text('Sub'),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: clear,
                      child: const Text('Clear'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Result : $_result',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void clear() {
    _numberOneTEController.clear();
    _numberTwoTEController.clear();
    _result = 0;
    setState(() {});
  }

  double add(double numOne, double numTwo) {
    return numOne + numTwo;
  }

  double subs(double numOne, double numTwo) {
    return numOne - numTwo;
  }
}
