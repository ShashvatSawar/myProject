import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_model.dart';

class InstalledCard extends StatelessWidget {
  final bool isConnected;
  final AssetImage image;
  final String title;
  VoidCallback onPressed;

  InstalledCard({this.isConnected, this.image, this.title, this.onPressed});


  @override
  Widget build(BuildContext context) {
    var cartModel = Provider.of<CartModel>(context);
    return Padding(
      padding:
          const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 7.0, right: 5.0),
      child: Card(
        color: Color.fromRGBO(32, 61, 140, 200),
        child: Container(
          padding: EdgeInsets.all(
            5.0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Transform.scale(
                    scale: 0.5,
                    child: Container(
                      padding: EdgeInsets.all(0),
                      margin:
                          EdgeInsets.only(bottom: 0.0, top: 0.0, right: 10.0),
                      child: Consumer<CartModel>(
                        builder: (_, cart, __) => IconButton(
                            icon: Icon(
                                (cart.cards.map((card) => card.title).toList().contains(this.title))
                                    ? Icons.remove
                                    : Icons.add,
                                color: Colors.blue),
                            onPressed: () {
                              (cart.cards.map((card) => card.title).toList().contains(this.title))
                                  ? cart.remove(this.title)
                                  : cart.add(this);
                            }),
                      ),
                      color: Color(0x8d3a5c94),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0).copyWith(top: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(image: image),
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10.0),
                            
                            // border: Border.all(width: 2.0),
                          ),
                          
                          
                          height: 40.0,
                          width: 40.0,
                      
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          isConnected ? 'Connected' : 'Disconnected',
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 11.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
