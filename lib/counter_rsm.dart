import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                increment();
              }, 
              child: const Text("Counter"),
            ),
            Obx(() =>Text(count.toString())),
          ],
        ),
      ),
    );
  }
}