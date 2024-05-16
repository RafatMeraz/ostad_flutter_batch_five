import 'package:crafty_bay/data/models/slider_data.dart';

class SliderListModel {
  String? msg;
  List<SliderData>? sliderList;

  SliderListModel({this.msg, this.sliderList});

  SliderListModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      sliderList = <SliderData>[];
      json['data'].forEach((v) {
        sliderList!.add(SliderData.fromJson(v));
      });
    }
  }
}
