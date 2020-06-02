import 'package:flutter/material.dart';

class RecommandedCard extends StatelessWidget {
  final AssetImage image;
  final String title;
  final String integrationDetail;
  final String integrationType;
  RecommandedCard(
      {this.image, this.title, this.integrationType, this.integrationDetail});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: Card(
        color: Color.fromRGBO(32, 61, 140, 200),
        child: Container(
          padding: EdgeInsets.all(
            5.0,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: image),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height: 40.0,
                      width: 40.0,
                    ),
                    SizedBox(width: 15.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
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
                          integrationType,
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 11.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50.0,
                    ),
                    SizedBox(
                      width: 85.0,
                      height: 40.0,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Color(0xFF1c4891),),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: RaisedButton(
                          color: Colors.transparent,
                          child: Text(
                            'connect',
                            style: TextStyle(color: Colors.white),
                          ),
                          //   ),
                          // ),
                          onPressed: () {},
                        
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: 225.0,
                child: Text(
                  integrationDetail,
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: 11.0,
                  ),
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   mainAxisSize: MainAxisSize.min,
              //   children: [
              //     Container(
              //       decoration: BoxDecoration(border: Border.all(width: 2.0)),
              //       margin: EdgeInsets.all(0),
              //       width: 200.0,
              //       child:
              //       child: Text('h'),
              //     ),
              //     SizedBox(
              //       width: 25.0,
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
