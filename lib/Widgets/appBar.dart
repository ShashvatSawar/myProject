import 'package:flutter/material.dart';


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool backButton;
  final String backButtonRoute;
  @override
  final Size preferredSize;
  MyAppBar({
    @required this.title,
    this.backButton = false,
    this.backButtonRoute = '',
  }) : preferredSize = Size.fromHeight(60.0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 10.0),
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            backButton ? IconButton(
                icon: Icon(
                  Icons.keyboard_backspace,
                  color: Colors.white54,
                ),
                onPressed: () {
                  if (backButtonRoute == '')
                    Navigator.of(context).pop;
                  else
                    Navigator.of(context).pushNamed(backButtonRoute);
                }) : SizedBox(
                  height: 50.0,
                  width: 45.0,
                  // child: Text('hhh'),
                ),
            Text(title,
                style: TextStyle(fontSize: 14.0, color: Colors.white54)),
          ],
        ),
      ),
    );
  }
}
