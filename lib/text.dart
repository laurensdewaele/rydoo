import 'package:flutter/cupertino.dart';
import 'package:rydoo/styles.dart' as styles;

import 'mobile_helper.dart';

class AppText extends StatelessWidget {
  AppText({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final bool _isMobile = isMobile(context);

    return Text(text,
        style:
            _isMobile ? styles.Typography.mobileText : styles.Typography.text);
  }
}
