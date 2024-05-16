import 'package:crafty_bay/data/models/network_response.dart';
import 'package:crafty_bay/data/models/slider_data.dart';
import 'package:crafty_bay/data/models/slider_list_model.dart';
import 'package:crafty_bay/data/network_caller/network_caller.dart';
import 'package:crafty_bay/data/utility/urls.dart';
import 'package:get/get.dart';

class HomeSliderController extends GetxController {
  bool _inProgress = false;
  String _errorMessage = '';
  List<SliderData> _sliderList = [];

  bool get inProgress => _inProgress;

  List<SliderData> get sliderList => _sliderList;

  String get errorMessage => _errorMessage;

  Future<bool> getSliders() async {
    bool isSuccess = false;
    _inProgress = true;
    update();
    final NetworkResponse response =
        await NetworkCaller.getRequest(url: Urls.homeSlider);
    if (response.isSuccess) {
      _sliderList =
          SliderListModel.fromJson(response.responseData).sliderList ?? [];
    } else {
      _errorMessage = response.errorMessage;
    }
    _inProgress = false;
    update();
    return isSuccess;
  }
}
