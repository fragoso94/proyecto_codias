import 'package:flutter/material.dart';
import 'Pages/Calculo.dart';
import 'Pages/Home.dart';

void main() {
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
}
