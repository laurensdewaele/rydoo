import 'package:flutter/cupertino.dart';
import 'package:rydoo/styles.dart' as styles;

import 'mobile_helper.dart';

class Button extends StatelessWidget {
  Button({Key key, @required this.handleTap, @required this.text})
      : super(key: key);

  final VoidCallback handleTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    final bool _isMobile = isMobile(context);

    return GestureDetector(
      onTap: handleTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: _isMobile ? 10 : 20, horizontal: _isMobile ? 25 : 50),
        decoration: BoxDecoration(
            color: styles.Colors.orange,
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Text(
          text.toUpperCase(),
          style: _isMobile
              ? styles.Typography.mobileButton
              : styles.Typography.button,
        ),
      ),
    );
  }
}
