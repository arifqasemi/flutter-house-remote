import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier{
  bool isExpand =false;
  final PageController controller = PageController();
   int pageIndex =0;
   bool islights = false;
   bool isMusic = false;
   bool isTimer = false;
   bool islightsIntensity = false;
   bool isAirConidtion = false;


   void roomController(String roomPower){
    if(roomPower =='timer'){
      isTimer =!isTimer;
    }
    if(roomPower =='music'){
      isMusic =!isMusic;
    }
    if(roomPower =='light'){
      islights =!islights;
    }
    if(roomPower =='lightIntens'){
      islightsIntensity =!islightsIntensity;
    }
    if(roomPower =='aircondition'){
      isAirConidtion =!isAirConidtion;
    }
      notifyListeners();

   }


    void jumpToPage(int index){
      controller.jumpToPage(index);
      pageIndex = index;
      notifyListeners();
    }


   void dispose(){
    controller.dispose();
    super.dispose();
   }

  void updateExpand(bool newVlau){
    isExpand = newVlau;
    notifyListeners();
    
  }


  

}