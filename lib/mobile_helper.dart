import 'package:flutter/cupertino.dart';

bool isMobile(BuildContext context) {
  return MediaQuery.of(context).size.width < 700;
}
