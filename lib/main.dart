import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'Pages/CalculoScreen.dart';
import 'Pages/HomeScreen.dart';
import 'Pages/CotizacionScreen.dart';

void main(){
  runApp(new MaterialApp(
    home: new App(),
  ));
}

class App extends StatefulWidget {
  @override
  _AppState createState() => new _AppState();
}

class _AppState extends State<App> {
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

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Inicio"),
                Tab(icon: Icon(Icons.texture), text: "Calculo"),
                Tab(icon: Icon(Icons.content_paste), text: "Cotizador"),
              ],
            ),
            title: Text('CODIAS DIGITAL'),
          ),
          body: TabBarView(
            children: [
              Home(),
              Calculo(),
              CotizacionScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

/*void main() {
  runApp(App());
}
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Inicio"),
                Tab(icon: Icon(Icons.texture), text: "Calculo"),
              ],
            ),
            title: Text('CODIAS DIGITAL'),
          ),
          body: TabBarView(
            children: [
              Home(),
              //empieza el egundo tap bar
              Calculo(),
            ],
          ),
          /*bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Inicio')),
              BottomNavigationBarItem(icon: Icon(Icons.texture), title: Text('Calculo')),
            ], onTap: (int i)=> changeViews(i)//debugPrint("Elemento $i"),
          ),*/
        ),
      ),
    );
  }
}

void changeViews(item){
  switch(item){
    case 0: print("soy el inicio");
        break;
    case 1: Calculo();
    break;
  }
}*/
