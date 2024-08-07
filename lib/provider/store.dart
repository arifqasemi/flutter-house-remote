import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExpandNotifier extends StateNotifier<bool>{
  ExpandNotifier():super(false);



  void updateIsExpand(bool value){
    state =!state;
    print(' this is working');
  }
}


final ExpandProvider = StateNotifierProvider<ExpandNotifier,bool>((ref) {
  return ExpandNotifier();
});