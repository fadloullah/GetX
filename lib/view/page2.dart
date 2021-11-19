import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/homeconroller.dart';
import 'package:get/get.dart';
class Page2 extends StatelessWidget {
  Page2({Key? key}) : super(key: key);

  HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: GetBuilder<HomeController>(
                //init: HomeController(),
                builder: (controller) => Text(
                  "${controller.counter}",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
