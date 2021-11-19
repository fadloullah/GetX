import 'package:flutter_getx/controller/homeconroller.dart';
import 'package:get/get.dart';

class MyBindings implements Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
  }

}