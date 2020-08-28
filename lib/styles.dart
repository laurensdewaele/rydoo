library styles;

import 'package:flutter/cupertino.dart';

abstract class Colors {
  static const Color bgBlue = const Color.fromRGBO(42, 41, 92, 1);
  static const Color white = const Color.fromRGBO(255, 255, 255, 1);
  static const Color text = const Color.fromRGBO(33, 37, 41, 1);
  static const Color orange = const Color.fromRGBO(255, 150, 115, 1);
}

abstract class Typography {
  static const TextStyle title = TextStyle(
    height: 1.5,
    fontFamily: 'BuenosAires',
    fontSize: 100,
    color: Colors.white,
  );
  static const TextStyle mobileTitle = TextStyle(
    height: 1.5,
    fontFamily: 'BuenosAires',
    fontSize: 60,
    color: Colors.white,
  );
  static const TextStyle text = TextStyle(
      height: 1.5, fontFamily: 'BuenosAires', fontSize: 22, color: Colors.text);
  static const TextStyle mobileText = TextStyle(
      height: 1.5, fontFamily: 'BuenosAires', fontSize: 14, color: Colors.text);
  static const TextStyle button = TextStyle(
      height: 1.5,
      fontFamily: 'BuenosAires',
      fontSize: 22,
      color: Colors.white,
      fontWeight: FontWeight.w700);
  static const TextStyle mobileButton = TextStyle(
      height: 1.5,
      fontFamily: 'BuenosAires',
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w700);
}
