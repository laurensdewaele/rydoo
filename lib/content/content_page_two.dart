import 'package:flutter/cupertino.dart';
import 'package:rydoo/app_text.dart';
import 'package:rydoo/card.dart';

class ContentPageTwo extends StatelessWidget {
  ContentPageTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: AppText(
        text:
            'Last year, we researched what would best fit the client’s needs, React native or Flutter. I immediately fell in love with Flutter and the community (despite being a React fanboy!)',
      ),
    );
  }
}
