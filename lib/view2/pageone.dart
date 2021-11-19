
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pagetwo.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page One"),
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
