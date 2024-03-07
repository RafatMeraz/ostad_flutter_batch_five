import 'package:task_manager/data/models/task_by_status_data.dart';

class CountByStatusWrapper {
  String? status;
  List<TaskByStatusData>? listOfTaskByStatusData;

  CountByStatusWrapper({this.status, this.listOfTaskByStatusData});

  CountByStatusWrapper.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      listOfTaskByStatusData = <TaskByStatusData>[];
      json['data'].forEach((v) {
        listOfTaskByStatusData!.add(TaskByStatusData.fromJson(v));
      });
    }
  }
}
