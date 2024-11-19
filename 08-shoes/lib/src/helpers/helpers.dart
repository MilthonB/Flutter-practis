import 'package:flutter/services.dart' as services;

void  cambiarSttuusLigjt(){
  services.SystemChrome.setSystemUIOverlayStyle( services.SystemUiOverlayStyle.light );
}

void  cambiarSttuusDark(){
  services.SystemChrome.setSystemUIOverlayStyle( services.SystemUiOverlayStyle.dark );
}