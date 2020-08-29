import 'package:flutter/cupertino.dart';
import 'package:rydoo/icons.dart' as icons;

class NavigationIndicator extends StatelessWidget {
  NavigationIndicator(
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
