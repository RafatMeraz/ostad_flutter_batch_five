class TaskByStatusData {
  String? sId;
  int? sum;

  TaskByStatusData({this.sId, this.sum});

  TaskByStatusData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    sum = json['sum'];
  }
}
