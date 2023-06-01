import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_rsm.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Get x"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Get.snackbar(
                    "Message", 
                    "This is snack abr message",
                    snackPosition: SnackPosition.BOTTOM,
                    colorText: Colors.red,
                    backgroundColor: Colors.green,
                    borderRadius: 30,
                    margin: const EdgeInsets.all(10),
                    animationDuration: const Duration(microseconds: 200),
                    borderWidth: 4,
                    borderColor: Colors.yellow,
                    isDismissible: true,
                    onTap: (value){
                      print("Clicked");
                    }
                  );
                }, 
                child: const Text("Show snack message")
              ),
              ElevatedButton(
                onPressed: (){
                  Get.defaultDialog(
                    title:  "Dialog title",
                    titleStyle: const TextStyle(fontSize: 25),
                    middleText: "This is middle text",
                    middleTextStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.purple,
                    radius: 80,
                  );
                }, 
                child: const Text("Dialog")
              ),
              ElevatedButton(
                onPressed: (){
                  Get.bottomSheet(
                    Wrap(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.wb_sunny_outlined),
                          title: const Text("Light theme"),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },                          
                        ),
                        ListTile(
                          leading: const Icon(Icons.wb_sunny),
                          title: const Text("Dark theme"),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },                          
                        ),
                      ],
                    ),
                    barrierColor: Colors.amber,
                    isDismissible: true,
                    enableDrag: false,
                  );
                }, 
                child: const Text("Bottom Sheet")
              ),
              ElevatedButton(
          child: const Text("Go back"),
          onPressed: (){
            Get.back();
          },
        ),
          ElevatedButton(
          child: const Text("Counter"),
          onPressed: (){
            Get.to(CounterRSM());
          },
        ),
            ],
          ),
        ),
      );
  }
}