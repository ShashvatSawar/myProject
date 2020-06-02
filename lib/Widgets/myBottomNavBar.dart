import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:MyProject/routes/Routes.dart';
// import '../presentation/custom_icons.dart';

class MyBottomNavBar extends StatefulWidget {
  int selectedIndex;
  final List<MyBottomNavBarItem> items = <MyBottomNavBarItem>[
    MyBottomNavBarItem(icon: Icons.dashboard, title: 'Dashboard'),
    MyBottomNavBarItem(icon: Icons.date_range, title: 'Discover'),
    MyBottomNavBarItem(icon: Icons.games, title: 'Games'),
    MyBottomNavBarItem(icon: Icons.date_range, title: 'Classes'),
    MyBottomNavBarItem(icon: Icons.person, title: 'Profile'),
  ];
  MyBottomNavBar({this.selectedIndex});
  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: widget.items.map(
          (item) {
            var itemIndex = widget.items.indexOf(item);
            if (widget.selectedIndex == itemIndex)
              item.isSelected = true;
            else
              item.isSelected = false;
            return GestureDetector(
              onTap: () {
                setState(
                  () {
                    widget.selectedIndex = itemIndex;
                    print(itemIndex);
                    switch (widget.selectedIndex) {
                      case 0:
                        Navigator.of(context).pushNamed(Routes.dashboard);
                        break;
                      case 1:
                        Navigator.of(context).pushNamed(Routes.discover);
                        break;
                      case 2:
                        Navigator.of(context).pushNamed(Routes.games);
                        break;
                      case 3:
                        Navigator.of(context).pushNamed(Routes.classes);
                        break;
                      case 4:
                        Navigator.of(context).pushNamed(Routes.profile);
                        break;
                    }
                  },
                );
              },
              child: item,
            );
          },
        ).toList(),
      ),
    );
  }
}

class MyBottomNavBarItem extends StatefulWidget {
  bool selected = false;
  set isSelected(bool selected) => this.selected = selected;
  IconData icon;
  String title;

  MyBottomNavBarItem({this.icon, this.title});

  @override
  _MyBottomNavBarItemState createState() => _MyBottomNavBarItemState();
}

class _MyBottomNavBarItemState extends State<MyBottomNavBarItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.0,
      child: Container(
        padding: EdgeInsets.only(
          bottom: 12.0,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              widget.icon,
              color: Colors.white24,
              size: 20.0,
            ),
            Text(widget.title,
                style: TextStyle(
                    color: widget.selected ? Colors.white : Colors.white24,
                    fontSize: 10.0)),
          ],
        ),
      ),
    );
  }
}
