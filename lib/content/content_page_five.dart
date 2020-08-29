import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:rydoo/app_text.dart';
import 'package:rydoo/card.dart';

class ContentPageFive extends StatelessWidget {
  ContentPageFive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
    ));
  }
}
