import 'dart:collection';
import 'package:car_app/Model/model_list.dart';
import 'package:flutter/material.dart';

class CarCartProvidder extends ChangeNotifier {
  
  final List<ModelList> _cart = [];
  UnmodifiableListView get cart => UnmodifiableListView(_cart);

  void addToCart(ModelList item) {
    _cart.add(item);
    notifyListeners();
  }
  
  void reset() {
    _cart.clear();
    notifyListeners();
  }

}