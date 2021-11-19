import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_getx/view2/pageone.dart';
import 'package:flutter_getx/view2/pagetwo.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
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
                  Get.toNamed("/pageOne");
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
