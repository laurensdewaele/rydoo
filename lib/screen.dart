import 'package:flutter/cupertino.dart';
import 'package:rydoo/content/index.dart';
import 'package:rydoo/navigation_indicator.dart';
import 'package:rydoo/styles.dart' as styles;

class Screen extends StatefulWidget {
  Screen({Key key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                content[_currentPage - 1],
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: NavigationIndicator(
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
