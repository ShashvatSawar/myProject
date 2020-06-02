import 'package:MyProject/module/profile/cart_model.dart';
import 'package:MyProject/routes/Routes.dart';
import 'package:flutter/material.dart';
import '../../Widgets/appBar.dart';
import 'package:provider/provider.dart';

class MyCart extends StatefulWidget {
  static const String routeName = '/profile/myCart';
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
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
          child: Consumer<CartModel>(
            builder: (context, cart, child) {
              return CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: MyAppBar(
                      title: 'Cart',
                      backButton: true,
                      backButtonRoute: Routes.profile,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 20.0),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        print(cart.cards.length);
                        return Card(
                          color: Color.fromRGBO(32, 61, 140, 200),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              '${index + 1}   :   ${cart.cards[index].title}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        );
                      },
                      childCount: cart.cards.length,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class Staticme {
  static int _id = 0;
  static int get id {
    _id++;
    return _id;
  }
}
