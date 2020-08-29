import 'package:flutter/cupertino.dart';
import 'package:rydoo/app_text.dart';
import 'package:rydoo/card.dart';

class ContentPageFour extends StatelessWidget {
  ContentPageFour({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: AppText(
        text:
            'At my previous company, we switched from manually printing and signing off on expense notes, to using Rydoo. There was a huge sigh of relief 🤗',
      ),
    );
  }
}
