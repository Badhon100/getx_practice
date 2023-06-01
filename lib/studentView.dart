import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/studentController.dart';

class StudentView extends StatelessWidget {

  StudentController studentController = Get.put(StudentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("Name : ${studentController.student.name}")),
            ElevatedButton(
              onPressed: (){
                studentController.convertToUpperCase();
              }, 
              child: const Text("Upper"),
            )
          ],
        ),
      ),
    );
  }
}