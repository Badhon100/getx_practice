import 'package:get/get.dart';
import 'package:getx_practice/student.dart';

class StudentController extends GetxController{
  var student = Student();
  void convertToUpperCase(){
    student.name.value = student.name.value.toUpperCase();
  }
}