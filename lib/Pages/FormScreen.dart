import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget{
  _FormScreen createState() => _FormScreen();
}

class _FormScreen extends State<FormScreen>{
  final _formKey = GlobalKey<FormState>();

  TextEditingController volumenTotalCtrl = TextEditingController();
  TextEditingController valorAundamientoCtrl = TextEditingController();
  TextEditingController  valorDosificadoCtrl = TextEditingController();

  //funcion para guardar desde el boton
  void onSubmitForm(){
    //foto: basename(fileImage.path),
    var txt = volumenTotalCtrl.toString();
    print(txt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Fomulario"),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    controller: volumenTotalCtrl,
                    decoration: InputDecoration(labelText: "Insertar el Volumen Total",),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'El campo volumen tota es requerido.';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: valorAundamientoCtrl,
                    decoration: InputDecoration(
                      //prefixIcon: Icon(Icons.format_list_bulleted),
                      labelText: "Insertar Valor Abundamiento",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'El campo Valor Abundamiento es requerido.';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: valorDosificadoCtrl,
                    decoration: InputDecoration(labelText: "Insertar Valor Dosificación",),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'El campo Valor Dosificación es requerido.';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.0,),
                  Padding(
                    //padding: const EdgeInsets.symmetric(vertical: 5.0),
                    padding: EdgeInsets.all(4.0),
                    child: MaterialButton(
                      minWidth: 75.0,
                      height: 40.0,
                      color: Colors.pink,
                      splashColor: Colors.pinkAccent,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 60.0),
                            child: Icon(Icons.cached, size: 20.0,),
                          ),
                          SizedBox(width: 10.0,),
                          Text("Calcular Material",
                            style: TextStyle(fontSize: 18.0),
                            overflow: TextOverflow.clip,
                          ),
                        ],),
                      onPressed: (){
                        if (_formKey.currentState.validate()) {
                          onSubmitForm();
                          // Si el formulario es válido, queremos mostrar un Snackbar
                          Scaffold.of(context)
                              .showSnackBar(SnackBar(content: Text('Guardando..')));
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Text("El resultado es:"),
                  Text("El equivalente es:"),
                ],
              )
          )
      ),
    );
  }
}