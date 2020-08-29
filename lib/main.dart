import 'package:flutter/cupertino.dart';
import 'package:rydoo/screen.dart';

void main() {
  runApp(_App());
}

class _App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Rydoo solicitation',
      home: Screen(),
    );
  }
}
