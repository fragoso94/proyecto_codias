import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'Pages/CalculoScreen.dart';
import 'Pages/HomeScreen.dart';
import 'Pages/CotizacionScreen.dart';

void main(){
  runApp(new MaterialApp(
    /*initialRoute: '/',
      routes: {
        // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
        '/': (context) =>  Home(),
        // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
        '/second': (context) => Calculo(),
      },*/
    home: AppCodias(),
  ));
}

class AppCodias extends StatefulWidget {
  AppCodias({Key key}) : super(key: key);

  @override
  _AppCodias createState() => _AppCodias();
}

class _AppCodias extends State<AppCodias> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 4,
        navigateAfterSeconds: new AfterSplash(),
        title: Text('Bienvenido a Codias Digital',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),),
        image: Image.asset("images/logo.jpg"),
        //Image.network('https://i.imgur.com/TyCSG9A.png'),
        backgroundColor: Colors.red,
        styleTextUnderTheLoader: new TextStyle(color: Colors.blue),
        photoSize: 150.0,
        //onClick: ()=>print("Flutter Egypt"),
        loaderColor: Colors.white
    );
  }
}

class AfterSplash extends StatefulWidget {
  @override
  _AfterSplash createState() => new _AfterSplash();
}


class _AfterSplash extends State<AfterSplash> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    Home(),
    Calculo(),
    CotizacionScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CODIAS DIGITAL'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.texture),
            title: Text('Calculo'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.content_paste),
            title: Text('Cotizador'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
