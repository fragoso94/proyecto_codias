import 'package:flutter/material.dart';
import 'FormScreen.dart';

class Calculo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Lista de Material"),
      ),*/
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: <Widget>[
              ButtonTheme(
                minWidth: 300.0,
                height: 40.0,
                child: RaisedButton(
                  child: Text('BASE ASFÁLTICA', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  color: Colors.red,
                  onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => FormScreen()),)
                ),
              ),
              ButtonTheme(
                minWidth: 300.0,
                height: 40.0,
                child: RaisedButton(
                  child: Text('CARPETA EN CALIENTE', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  color: Colors.red,
                  onPressed: ()=> print('sign in..'),
                ),
              ),
              ButtonTheme(
                minWidth: 300.0,
                height: 40.0,
                child: RaisedButton(
                  child: Text('CARPETA EN FRÍO', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  color: Colors.red,
                  onPressed: ()=> print('sign in..'),
                ),
              ),
              ButtonTheme(
                minWidth: 300.0,
                height: 40.0,
                child: RaisedButton(
                  child: Text('BACHEO EN FRÍO', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  color: Colors.red,
                  onPressed: ()=> print('sign in..'),
                ),
              ),
              ButtonTheme(
                minWidth: 300.0,
                height: 40.0,
                child: RaisedButton(
                  child: Text('BACHEO EN CALIENTE', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  color: Colors.red,
                  onPressed: ()=> print('sign in..'),
                ),
              ),
              ButtonTheme(
                minWidth: 300.0,
                height: 40.0,
                child: RaisedButton(
                  child: Text('PAVIMENTACIÓN EN FRÍO', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  color: Colors.red,
                  onPressed: ()=> print('sign in..'),
                ),
              ),
              ButtonTheme(
                minWidth: 300.0,
                height: 40.0,
                child: RaisedButton(
                  child: Text('PAVIMENTACIÓN EN CALIENTE', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  color: Colors.red,
                  onPressed: ()=> print('sign in..'),
                ),
              ),
              ButtonTheme(
                minWidth: 300.0,
                height: 40.0,
                child: RaisedButton(
                  child: Text('REMEZCLADO DE SELLO', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  color: Colors.red,
                  onPressed: ()=> print('sign in..'),
                ),
              ),
              ButtonTheme(
                minWidth: 300.0,
                height: 40.0,
                child: RaisedButton(
                  child: Text('IMPREGNACION', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  color: Colors.red,
                  onPressed: ()=> print('sign in..'),
                ),
              ),
              ButtonTheme(
                minWidth: 300.0,
                height: 40.0,
                child: RaisedButton(
                  child: Text('LIGA P/CARPETA', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  color: Colors.red,
                  onPressed: ()=> print('sign in..'),
                ),
              ),
              ButtonTheme(
                minWidth: 300.0,
                height: 40.0,
                child: RaisedButton(
                  child: Text('LIGA P/SELLO', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  color: Colors.red,
                  onPressed: ()=> print('sign in..'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}