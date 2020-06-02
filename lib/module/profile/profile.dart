import 'package:flutter/material.dart';
import '../../Widgets/myBottomNavBar.dart';
import '../../Widgets/appBar.dart';
import 'installed_card.dart';
import 'recommanded_card.dart';
import '../../routes/Routes.dart';
import 'my_cart.dart';

class Profile extends StatelessWidget {
  final List<InstalledCard> _installedCards = [
    InstalledCard(
      image: AssetImage(
        'images/test.jpg',
      ),
      isConnected: true,
      title: "Strava",
    ),
    InstalledCard(
      image: AssetImage(
        'images/test.jpg',
      ),
      isConnected: false,
      title: 'Fitbit',
    ),
    InstalledCard(
      image: AssetImage(
        'images/test.jpg',
      ),
      isConnected: true,
      title: 'Apple Health',
    ),
  ];
  final List<RecommandedCard> _recommandedCards = [
    RecommandedCard(
      image: AssetImage(
        'images/test.jpg',
      ),
      integrationType: 'Social',
      title: 'Twitter',
      integrationDetail:
          'Share your fitness and challange your friends with various goals',
    ),
    RecommandedCard(
      image: AssetImage(
        'images/test.jpg',
      ),
      integrationType: 'health',
      title: 'Mi care',
      integrationDetail: 'Track your ...',
    ),
  ];
  static const double _padding = 20.0;
  final _index = 4;
  static const String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10.0),
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
          child: Builder(builder: (context) {
            return CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: MyAppBar(
                    title: 'Profile',
                    backButton: true,
                    backButtonRoute: Routes.dashboard,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      bottom: _padding,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Integrations',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 50.0,
                          child: RaisedButton(
                            // child: Center(
                            child: Icon(
                              Icons.add_shopping_cart,
                              color: Colors.white,
                            ),
                            // ),
                            color: Colors.blue,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyCart(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0).copyWith(bottom: 10.0,),
                    child: Text(
                      'Installed',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
                SliverGrid.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    ..._installedCards.map((item) {
                      return item;
                    }).toList(),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 100.0),
                        child: Card(
                          color: Color(0xFF1d5ac2),
                          child: Padding(
                            padding: EdgeInsets.all(
                              5.0,
                            ),
                            child: Center(
                              child: Text(
                                '+ add new',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                  mainAxisSpacing: 0.0,
                  crossAxisSpacing: 0.0,
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 10.0,
                    ),
                    child: Text(
                      'Recommanded',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 140.0,
                    child: ListView.builder(
                      itemBuilder: (context, index) => _recommandedCards[index],
                      itemCount: _recommandedCards.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(
        selectedIndex: _index,
      ),
    );
  }
}
