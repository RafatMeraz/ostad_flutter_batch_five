import 'package:flutter/material.dart';
import 'package:live_class_project/todo.dart';

class EditTodoScreen extends StatefulWidget {
  const EditTodoScreen({super.key, required this.todo});

  final Todo todo;

  @override
  State<EditTodoScreen> createState() => _EditTodoScreenState();
}

class _EditTodoScreenState extends State<EditTodoScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _titleTEController = TextEditingController();
  late final TextEditingController _descriptionTEController =
      TextEditingController(text: widget.todo.description);

  @override
  void initState() {
    super.initState();
    _titleTEController.text = widget.todo.title;
    _descriptionTEController.text = widget.todo.description;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit todo',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleTEController,
                decoration: const InputDecoration(
                  hintText: 'Title',
                ),
                validator: (String? value) {
                  final v = value ?? '';
                  if (v.trim().isEmpty) {
                    return 'Enter your title';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _descriptionTEController,
                maxLines: 5,
                maxLength: 100,
                decoration: const InputDecoration(
                  hintText: 'Description',
                ),
                validator: (String? value) {
                  if (value?.trim().isEmpty ?? true) {
                    return 'Enter your description';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16,),
              SizedBox(
                // width: double.infinity,
                width: MediaQuery.sizeOf(context).width,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Todo todo = Todo(_titleTEController.text.trim(),
                          _descriptionTEController.text.trim(), DateTime.now());
                      Navigator.pop(context, todo);
                    }
                  },
                  child: const Text('Update'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleTEController.dispose();
    _descriptionTEController.dispose();
    super.dispose();
  }
}
