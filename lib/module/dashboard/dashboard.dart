import 'package:MyProject/Widgets/myBottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:MyProject/Widgets/appBar.dart';
import '../../Widgets/myBottomNavBar.dart';

class DashBoard extends StatefulWidget {
  static const String routeName = '/dashboard';

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final _index = 0;
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
          child: Column(
            children: <Widget>[
              MyAppBar(
                title: 'Dashboard',
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(
        selectedIndex: _index,
      ),
    );
  }
}
