import 'package:flutter/material.dart';



class SliderModel with ChangeNotifier{
  double _currentPage = 0 ; // Propiedad activada 

  double get currentPage => _currentPage;

  set currentPage (  double currentPageA ){
    this._currentPage = currentPageA;
    notifyListeners();
  }

}