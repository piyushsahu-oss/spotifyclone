import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/dashboard/view/permium_view.dart';
import 'package:spotify_clone/dashboard/view/search_view.dart';


import '../../home/view/home_view.dart';
import '../view/library_view.dart';


class DashboardViewModel extends GetxController {

  var selectedIndex = 0.obs;

  final screens =[
    HomeScreen(),
    SearchScreen(),
    LibraryScreen(),
    PermiumScreen()
  ];

   void changeTab(int index){
    selectedIndex.value = index;
   }


}