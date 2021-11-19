import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/homeconroller.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() =>    Row(
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
                  child: Text(
                    "${controller.counter.value}",
                    style: TextStyle(fontSize: 30),
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
            )),
          ],

        ),
      ),
    );
  }
}
