import 'package:flutter/material.dart';

class CotizacionScreen extends StatelessWidget {
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
            Text("Cotizacion view"),
          ],
        ),
      ),
    );
  }
}