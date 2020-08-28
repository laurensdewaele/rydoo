import 'package:flutter/cupertino.dart';
import 'package:rydoo/mobile_helper.dart';
import 'package:rydoo/styles.dart' as styles;

class Card extends StatelessWidget {
  const Card({Key key, @required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final bool _isMobile = isMobile(context);

    return Container(
      constraints: BoxConstraints(maxWidth: _isMobile ? 300 : 550),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(_isMobile ? 25 : 50)),
        color: styles.Colors.white,
      ),
      padding: EdgeInsets.all(_isMobile ? 25 : 50),
      child: child,
    );
  }
}
