import 'package:flutter/cupertino.dart';
import 'package:rydoo/app_text.dart';
import 'package:rydoo/button.dart';
import 'package:rydoo/card.dart';
import 'package:rydoo/divider.dart';
import 'package:rydoo/icons.dart' as icons;
import 'package:rydoo/mobile_helper.dart';
import 'package:rydoo/styles.dart' as styles;

class ContentPageOne extends StatelessWidget {
  ContentPageOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool _isMobile = isMobile(context);

    return Column(
      children: [
        Text(
          '👋 rydoo!',
          style: _isMobile
              ? styles.Typography.mobileTitle
              : styles.Typography.title,
        ),
        Divider(),
        Card(
          child: Column(
            children: [
              AppText(
                text: 'I’m Laurens, a passionate Flutter developer',
              ),
              Divider(),
              Button(
                text: 'proof',
                handleTap: () {
                  showCupertinoDialog(
                      barrierDismissible: true,
                      context: context,
                      builder: (BuildContext context) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Card(
                              child: Column(
                                children: [
                                  Image.network(
                                    'https://rydoo-application.web.app/assets/pic.png',
                                    fit: BoxFit.contain,
                                  ),
                                  Divider(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: icons.close,
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      });
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
