import 'package:get/get.dart';
import 'package:task_manager/data/models/task_list_wrapper.dart';
import 'package:task_manager/data/services/network_caller.dart';
import 'package:task_manager/data/utility/urls.dart';

class NewTaskController extends GetxController {
  bool _inProgress = false;
  String? _errorMessage;
  TaskListWrapper _newTaskListWrapper = TaskListWrapper();

  bool get inProgress => _inProgress;

  String get errorMessage => _errorMessage ?? '';

  TaskListWrapper get newTaskListWrapper => _newTaskListWrapper;

  Future<bool> getNewTaskList() async {
    bool isSuccess = false;
    _inProgress = true;
    update();
    final response = await NetworkCaller.getRequest(Urls.newTaskList);
    if (response.isSuccess) {
      _newTaskListWrapper = TaskListWrapper.fromJson(response.responseBody);
    } else {
      _errorMessage = response.errorMessage;
    }
    _inProgress = false;
    update();
    return isSuccess;
  }
}
