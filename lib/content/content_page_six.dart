import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:rydoo/app_text.dart';
import 'package:rydoo/button.dart';
import 'package:rydoo/card.dart';
import 'package:rydoo/divider.dart';

class ContentPageSix extends StatelessWidget {
  ContentPageSix({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          AppText(
            text: 'This was built with Flutter',
          ),
          Divider(),
          Button(
            text: 'view code',
            handleTap: () {
              html.window
                  .open('https://github.com/laurensdewaele/rydoo', '_blank');
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
    );
  }
}
