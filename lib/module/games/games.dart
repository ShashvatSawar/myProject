import 'package:MyProject/Widgets/appBar.dart';
import 'package:MyProject/routes/Routes.dart';
import 'package:flutter/material.dart';
import '../../Widgets/myBottomNavBar.dart';

class Games extends StatelessWidget {
  final _index = 2;
  static const String routeName = '/games';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromARGB(255, 0, 0, 15),
              Color.fromARGB(255, 0, 5, 20)
            ],
          ),
        ),
        child: Column(children: <Widget>[
          MyAppBar(
            title: 'Games',
            backButton: true,
            backButtonRoute: Routes.dashboard,
          ),
          Expanded(
            child: Center(
              child: Text(
                'To be Developed...',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.white24),
              ),
            ),
          ),
        ]),
      )),
      bottomNavigationBar: MyBottomNavBar(selectedIndex: _index),
    );
  }
}
