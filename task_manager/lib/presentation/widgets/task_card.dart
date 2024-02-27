import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Title will be here',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text('Description will be here'),
            const Text('Date: 12-01-2024'),
            Row(
              children: [
                const Chip(label: Text('New')),
                const Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.delete_outline)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
