import 'package:flutter/material.dart';
import 'package:task_manager/data/models/task_item.dart';
import 'package:task_manager/data/services/network_caller.dart';
import 'package:task_manager/data/utility/urls.dart';
import 'package:task_manager/presentation/widgets/snack_bar_message.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({
    super.key,
    required this.taskItem,
    required this.refreshList,
  });

  final TaskItem taskItem;
  final VoidCallback refreshList;

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool _updateTaskStatusInProgress = false;
  bool _deleteTaskInProgress = false;

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
            Text(
              widget.taskItem.title ?? '',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(widget.taskItem.description ?? ''),
            Text('Date: ${widget.taskItem.createdDate}'),
            Row(
              children: [
                Chip(label: Text(widget.taskItem.status ?? '')),
                const Spacer(),
                Visibility(
                  visible: _updateTaskStatusInProgress == false,
                  replacement: const CircularProgressIndicator(),
                  child: IconButton(
                    onPressed: () {
                      _showUpdateStatusDialog(widget.taskItem.sId!);
                    },
                    icon: const Icon(Icons.edit),
                  ),
                ),
                Visibility(
                  visible: _deleteTaskInProgress == false,
                  replacement: const CircularProgressIndicator(),
                  child: IconButton(
                      onPressed: () {
                        _deleteTaskById(widget.taskItem.sId!);
                      },
                      icon: const Icon(Icons.delete_outline)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _showUpdateStatusDialog(String id) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Select status'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('New'),
                trailing:
                    _isCurrentStatus('New') ? const Icon(Icons.check) : null,
                onTap: () {
                  if (_isCurrentStatus('New')) {
                    return;
                  }
                  _updateTaskById(id, 'New');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Completed'),
                trailing: _isCurrentStatus('Completed')
                    ? const Icon(Icons.check)
                    : null,
                onTap: () {
                  if (_isCurrentStatus('Completed')) {
                    return;
                  }
                  _updateTaskById(id, 'Completed');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Progress'),
                trailing: _isCurrentStatus('Progress')
                    ? const Icon(Icons.check)
                    : null,
                onTap: () {
                  if (_isCurrentStatus('Progress')) {
                    return;
                  }
                  _updateTaskById(id, 'Progress');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Cancelled'),
                trailing: _isCurrentStatus('Cancelled')
                    ? const Icon(Icons.check)
                    : null,
                onTap: () {
                  if (_isCurrentStatus('Cancelled')) {
                    return;
                  }
                  _updateTaskById(id, 'Cancelled');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  bool _isCurrentStatus(String status) {
    return widget.taskItem.status! == status;
  }

  Future<void> _updateTaskById(String id, String status) async {
    _updateTaskStatusInProgress = true;
    setState(() {});
    final response =
        await NetworkCaller.getRequest(Urls.updateTaskStatus(id, status));
    _updateTaskStatusInProgress = false;
    if (response.isSuccess) {
      _updateTaskStatusInProgress = false;
      widget.refreshList();
    } else {
      setState(() {});
      if (mounted) {
        showSnackBarMessage(context,
            response.errorMessage ?? 'Update task status has been failed');
      }
    }
  }

  Future<void> _deleteTaskById(String id) async {
    _deleteTaskInProgress = true;
    setState(() {});
    final response = await NetworkCaller.getRequest(Urls.deleteTask(id));
    _deleteTaskInProgress = false;

    if (response.isSuccess) {
      widget.refreshList();
    } else {
      setState(() {});
      if (mounted) {
        showSnackBarMessage(
            context, response.errorMessage ?? 'Delete task has been failed');
      }
    }
  }
}
