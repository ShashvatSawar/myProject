import 'package:flutter/material.dart';
import 'module/classes/classes.dart';
import 'module/dashboard/dashboard.dart';
import 'module/discover/discover.dart';
import 'module/games/games.dart';
import 'module/profile/profile.dart';
import 'routes/Routes.dart';
import 'module/profile/my_cart.dart';
import 'package:provider/provider.dart';
import 'module/profile/cart_model.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
void main() {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return ChangeNotifierProvider<CartModel>(
      create: (context) => CartModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Classes(),
        debugShowCheckedModeBanner: false,
        routes: {
          Routes.classes: (context) => Classes(),
          Routes.dashboard: ((context) => DashBoard()),
          Routes.discover: ((context) => Discover()),
          Routes.games: ((context) => Games()),
          Routes.profile: ((context) => Profile()),
          Routes.mycart: ((context) => MyCart()),
        },
      ),
    );
  }
}

// class MyHome extends StatefulWidget {
//   @override
//   _MyHomeState createState() => _MyHomeState();
// }

// class _MyHomeState extends State<MyHome> {
//   // final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
//   // int _currentTabIndex = 0;

//   // @override
//   // Widget build(BuildContext context) {
//   //   return SafeArea(
//   //         child: Scaffold(
//   //           body: Navigator(
//   //             key: _navigatorKey,
//   //             onGenerateRoute: generateRoute,
//   //           ),
//   //       bottomNavigationBar: BottomNavigationBar(
//   //         selectedLabelStyle: TextStyle(color: Colors.white),
//   //         type: BottomNavigationBarType.fixed,
//   //         backgroundColor: Colors.black,
//   //         currentIndex: _currentTabIndex,
//   //         onTap: _onTap,
//   //         items: allDestinations
//   //             .map((Destination destination) => BottomNavigationBarItem(
//   //                   icon: Icon(destination.icon, color: Colors.white70, ),
//   //                   title: Text(destination.title, style: TextStyle(color: Colors.white70,),),
//   //                   backgroundColor: Colors.black,
//   //                 ))
//   //             .toList(),
//   //       ),

//   //     ),
//   //   );
//   }

//   _onTap(int tabIndex) {
//     _currentTabIndex = tabIndex;
//     switch (tabIndex) {
//       case 0:
//         _navigatorKey.currentState.pushReplacementNamed(Routes.profile);
//         break;
//       case 1:
//         _navigatorKey.currentState.pushReplacementNamed(Routes.games);
//         break;
//       case 2:
//         _navigatorKey.currentState.pushReplacementNamed(Routes.discover);
//         break;
//       case 3:
//         _navigatorKey.currentState.pushReplacementNamed(Routes.dashboard);
//         break;
//       case 4:
//         _navigatorKey.currentState.pushReplacementNamed(Routes.classes);
//         break;
//     }

//     setState(() {});
//   }
// }

// Route<dynamic> generateRoute(RouteSettings settings) {
//   switch(settings.name) {
//     case Routes.dashboard:
//       return MaterialPageRoute(builder: (context) => DashBoard());
//     case Routes.classes:
//       return MaterialPageRoute(builder: ((context) => Classes()));
//     case Routes.discover:
//       return MaterialPageRoute(builder: ((context) => Discover()));
//     case Routes.games:
//       return MaterialPageRoute(builder: ((context) => Games()));
//     case Routes.profile:
//       return MaterialPageRoute(builder: ((context) => Profile()));
//     case '/':
//       return MaterialPageRoute(builder: ((context) => Profile()));
//   }
// }
