

import 'package:get/get.dart';

class  PlaylistViewModel extends GetxController{

   var title = ''.obs;
    var songDescription = ''.obs;
    var image = ''.obs;
  var isContainer = false.obs;

 void toggleContainer(){
   isContainer.value = true;
 }


}