import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Lista de Material"),
      ),*/
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 300.0,
              child:
              Card(
                elevation: 2.0,
                clipBehavior: Clip.antiAlias,
                child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: Image.asset("images/logo.jpg", fit: BoxFit.cover),
                      ),
                      const ListTile(
                        title: Text('La app diseñada para tus necesidades de constructor.'),
                        subtitle: Text("CODIAS DIGITAL", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.black),),
                      ),
                    ]
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Text("Siguenos en nuestras redes sociales,"),
            SizedBox(height: 20.0,),
            Row(
              children: <Widget>[
                SizedBox(width: 20.0,),
                Icon(
                  Icons.favorite,
                  color: Colors.black,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                SizedBox(width: 20.0,),
                Text("www.codias.com.mx"),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 20.0,),
                Icon(
                  Icons.favorite,
                  color: Colors.blue,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                SizedBox(width: 20.0,),
                Text("Facebook"),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 20.0,),
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                SizedBox(width: 20.0,),
                Text("Instagram"),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 20.0,),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                SizedBox(width: 20.0,),
                Text("YouTube"),
              ],
            ),

          ],
        ),
      ),
    );
  }
}