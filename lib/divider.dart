import 'package:flutter/cupertino.dart';
import 'package:rydoo/mobile_helper.dart';

class Divider extends StatelessWidget {
  Divider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool _isMobile = isMobile(context);

    return SizedBox(height: _isMobile ? 25 : 50);
  }
}
