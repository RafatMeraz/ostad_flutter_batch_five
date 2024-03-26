class TaskCountByStatusData {
  String? sId;
  int? sum;

  TaskCountByStatusData({this.sId, this.sum});

  TaskCountByStatusData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    sum = json['sum'];
  }
}
