class TaskItem {
  String? sId;
  String? title;
  String? description;
  String? status;
  String? createdDate;

  TaskItem({this.sId, this.title, this.description, this.status, this.createdDate});

  TaskItem.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    description = json['description'];
    status = json['status'];
    createdDate = json['createdDate'];
  }
}