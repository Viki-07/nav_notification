import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
class Counter extends ChangeNotifier {

  int notifi_count=0;
  int cart_count=0;
  int fav_count=0;
  void notif_increment() {
    notifi_count++;
    notifyListeners();
  }
  void cart_increment()
  {
    cart_count++;
    notifyListeners();
  }
  void fav_increment()
  {
    fav_count++;
    notifyListeners();
  }
    void notif_decrement() {
    if(notifi_count!=0) {
      notifi_count--;
    }
    notifyListeners();
  }
  void cart_decrement()
  {
    if(cart_count!=0) {
      cart_count--;
    }
    notifyListeners();
  }
  void fav_decrement()
  {
    if(fav_count!=0) {
      fav_count--;
    }
    notifyListeners();
  }
}