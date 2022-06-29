import 'package:get/get.dart';
class Controller extends GetxController{
  var counter=0.obs;
  setCount(){
    counter(counter.value++);
    update();
  }
}