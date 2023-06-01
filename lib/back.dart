import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/home.dart';

class Back extends StatelessWidget {
  const Back({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text("Home page"),
          onPressed: (){
            Get.to(const Home(),
            //fullscreenDialog: true,
            transition: Transition.zoom,
            duration: const Duration(milliseconds: 6000)
            
            );
            
          },
        ),
      ),
    );
  }
}