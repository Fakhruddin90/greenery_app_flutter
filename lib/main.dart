import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greenery NYC',   
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

var greenColor = Color(0xff32a05f);
var darkGreenColor = Color(0xff279152);
var productImage = 'https://i.pinimg.com/originals/8f/bf/44/8fbf441fa92b29ebd0f324effbd4e616.png';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(108.0)),
                  color: Colors.white,
                ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 8.0),
                    Icon(Icons.arrow_back),
                    SizedBox(height: 8,),
                    Container(
                      width: 300.0,
                      child: Text(
                        'Fiddle Leaf Fig Topiary',
                        style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 32.0
                        ),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      '10" Nursery Pot', 
                      style: TextStyle(color: Colors.black45),
                    ),
                    SizedBox(height: 12.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text('\$', 
                            style: TextStyle(
                              color: greenColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,)),
                        ),
                        SizedBox(width: 4.0),
                        Text('85', 
                          style: TextStyle(
                            color: greenColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 52.0)),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: greenColor,
                          child: Icon(Icons.shopping_cart),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child:  Container(),
          )
        ],
        
      )
       
    );
  }
}
