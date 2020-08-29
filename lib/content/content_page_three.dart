import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:rydoo/app_text.dart';
import 'package:rydoo/button.dart';
import 'package:rydoo/card.dart';
import 'package:rydoo/divider.dart';

class ContentPageThree extends StatelessWidget {
  ContentPageThree({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
