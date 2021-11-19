import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/homeconroller.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  Page1({Key? key}) : super(key: key);
 //HomeController controller = Get.put(HomeController(),permanent: true);
  final HomeController controller = Get.find();
  //int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page1"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding:  EdgeInsets.symmetric(horizontal: 20),
                        child: IconButton(
                          onPressed: (){
                            controller.increment();
                          },
                          icon: Icon(Icons.add,size: 40,),
                        ),
                      ),
                      Center(
                        child: GetBuilder<HomeController>(
                          builder: (controller) =>Text(
                            "${controller.counter}",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),

                      Container(
                        padding:  EdgeInsets.symmetric(horizontal: 20),
                        child: IconButton(
                          onPressed: (){
                            controller.decrement();
                          },
                          icon: Icon(Icons.remove,size: 40,),
                        ),
                      ),
                    ],
                  ),
          ],

        ),
      ),
    );
  }
}
