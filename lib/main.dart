import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
