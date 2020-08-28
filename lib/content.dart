import 'dart:html' as html;

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:rydoo/button.dart';
import 'package:rydoo/card.dart';
import 'package:rydoo/divider.dart';
import 'package:rydoo/icons.dart' as icons;
import 'package:rydoo/mobile_helper.dart';
import 'package:rydoo/styles.dart' as styles;
import 'package:rydoo/text.dart';

final List<Widget> content = [
  _ContentHome(),
  _ContentPageTwo(),
  _ContentPageThree(),
  _ContentPageFour(),
  _ContentPageFive(),
  _ContentPageSix()
];

class _ContentHome extends StatelessWidget {
  _ContentHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool _isMobile = isMobile(context);

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
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
                                    'https://rydoo-application.web.app/assets/pic.jpeg',
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

class _ContentPageTwo extends StatelessWidget {
  _ContentPageTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          child: AppText(
            text:
                'Last year, we researched what would best fit the client’s needs, React native or Flutter. I immediately fell in love with Flutter and the community (despite being a React fanboy!)',
          ),
        ),
      ],
    );
  }
}

class _ContentPageThree extends StatelessWidget {
  _ContentPageThree({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          child: Column(
            children: [
              AppText(
                text:
                    'That combined with a strong urge to learn something new, led me to create:',
              ),
              Divider(),
              Button(
                text: 'tenso',
                handleTap: () {
                  html.window.open('https://tenso.app', '_blank');
                },
              )
            ],
          ),
        )
      ],
    );
  }
}

class _ContentPageFour extends StatelessWidget {
  _ContentPageFour({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          child: AppText(
            text:
                'At my previous company, we switched from manually printing and signing off on expense notes, to using Rydoo. There was a huge sigh of relief 🤗',
          ),
        ),
      ],
    );
  }
}

class _ContentPageFive extends StatelessWidget {
  _ContentPageFive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
            child: Column(
          children: [
            AppText(
              text:
                  'The due to all of the above, I\'m hoping we will be a good fit so we can flutter away together',
            ),
            Container(
              height: 280,
              child: Center(
                child: FlareActor("rydoo_flutter.flr",
                    alignment: Alignment.topCenter,
                    fit: BoxFit.contain,
                    animation: "flutter"),
              ),
            ),
          ],
        )),
      ],
    );
  }
}

class _ContentPageSix extends StatelessWidget {
  _ContentPageSix({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          child: Column(
            children: [
              AppText(
                text: 'This was built with Flutter',
              ),
              Divider(),
              Button(
                text: 'view code',
                handleTap: () {
                  html.window.open(
                      'https://github.com/laurensdewaele/rydoo', '_blank');
                },
              ),
              Divider(),
              AppText(
                text: 'email: laurens.dewaele@gmail.com',
              ),
              AppText(
                text: 'phone: +32 (0)486 88 20 40',
              ),
            ],
          ),
        )
      ],
    );
  }
}
