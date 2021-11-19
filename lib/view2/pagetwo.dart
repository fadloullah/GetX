

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pageone.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Two"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: (){
                  Get.to(PageOne());
                },
                child: Text("Page One"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: (){
                  Get.to(PageTwo());
                },
                child: Text("Page Two"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
