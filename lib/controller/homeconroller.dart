import 'package:get/get.dart';

class HomeController extends GetxController{
  //RxInt counter = 0.obs;
var counter = 0;
  void increment(){
    counter++;
    update();
  }

  void decrement(){
    counter--;
    update();
  }

  @override
  void onInit() {//initstate
    print("init HomeController");
    super.onInit();
  }
  @override
  void onReady() {
    print("Ready HomeController");
    super.onReady();
  }
  @override
  void onClose() { //dispose
    print("Close HomeController");
    super.onClose();
  }

}