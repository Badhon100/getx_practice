import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/counterController.dart';

class CounterRSM extends StatelessWidget {
   CounterRSM({super.key});
  var count = 0.obs;
  increment(){
    count++;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Get.find<CounterController>().increment();
              }, 
              child: const Text("Counter"),
            ),
            GetX<CounterController>(
              init: CounterController(),
              builder: (controller){
                return Text(controller.count.toString());
              }
            )

          ],
        ),
      ),
    );
  }
}