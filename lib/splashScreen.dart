import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Lista de Material"),
      ),*/
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.red),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.greenAccent,
                          size: 50.0
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text("CODIAS DIGITAL", style: TextStyle(
                        color: Colors.white,
                          fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text("Construccion, diseño y distribucción de insummos asfálticcos S.A. DE C.V.",
                    style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}