import 'package:flutter/cupertino.dart';
import 'package:rydoo/content.dart';
import 'package:rydoo/icons.dart' as icons;
import 'package:rydoo/styles.dart' as styles;

void main() {
  runApp(_App());
}

class _App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Rydoo solicitation',
      home: _Screen(),
    );
  }
}

class _Screen extends StatefulWidget {
  _Screen({Key key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<_Screen> {
  int _currentPage = 1;

  void _previousPage() {
    setState(() {
      --_currentPage;
    });
  }

  void _nextPage() {
    setState(() {
      ++_currentPage;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: styles.Colors.bgBlue),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 3,
            child: content[_currentPage - 1],
          ),
          Expanded(
            flex: 1,
            child: _Navigation(
              currentPage: _currentPage,
              totalPages: content.length,
              handleNextTap: _nextPage,
              handlePreviousTap: _previousPage,
            ),
          ),
        ],
      ),
    );
  }
}

class _Navigation extends StatelessWidget {
  _Navigation(
      {Key key,
      @required this.handleNextTap,
      @required this.handlePreviousTap,
      @required this.currentPage,
      @required this.totalPages})
      : super(key: key);

  final VoidCallback handleNextTap;
  final VoidCallback handlePreviousTap;
  final int currentPage;
  final int totalPages;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (currentPage != 1)
          GestureDetector(
            onTap: handlePreviousTap,
            child: icons.previous,
          ),
        if (currentPage != totalPages)
          GestureDetector(
            onTap: handleNextTap,
            child: icons.next,
          )
      ],
    );
  }
}
