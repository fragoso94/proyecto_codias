import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../Logic/Operaciones.dart';

class BaseAsfaltica extends StatefulWidget{
  _BaseAsfaltica createState() => _BaseAsfaltica();
}

class _BaseAsfaltica extends State<BaseAsfaltica>{
  final _formKey = GlobalKey<FormState>();

  TextEditingController volumenTotalCtrl = TextEditingController();
  TextEditingController valorAbundamientoCtrl = TextEditingController();
  TextEditingController  valorDosificadoCtrl = TextEditingController();
  String _total = "";
  String _equivalente = "";
  var valores = [];

  //funcion para guardar desde el boton
  void onSubmitForm(){
      Operaciones valor = new Operaciones();
      //conviertiendo de tipo text a entero;
      double volumen = double.parse(volumenTotalCtrl.text);
      double abundamiento = double.parse(valorAbundamientoCtrl.text);
      double desificacion = double.parse(valorDosificadoCtrl.text);
      valores = valor.CalcularTotal(volumen, abundamiento, desificacion);
      print(valores[0]);
      print(valores[1]);
      setState((){
          _total = valores[0].toString();
          _equivalente = valores[1].toString();
        }
      );
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
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        icon: Icon(Icons.info),
                        tooltip: 'Volumen Total',
                        onPressed: () {
                          alertMsg(context, "Volumen Total.");
                        },
                      ),
                      labelText: "Insertar el Volumen Total",),
                    maxLength: 11,
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'El campo volumen total es requerido.';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: valorAbundamientoCtrl,
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        icon: Icon(Icons.info),
                        tooltip: 'Valor Abundamiento',
                        onPressed: () {
                          alertMsg(context, "Valor Abundamiento.");
                        },
                      ),
                      labelText: "Insertar Valor Abundamiento",
                        //border: OutlineInputBorder()
                    ),
                    maxLength: 11,
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'El campo Valor Abundamiento es requerido.';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: valorDosificadoCtrl,
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        icon: Icon(Icons.info),
                        tooltip: 'Valor Dosificación',
                        onPressed: () {
                          alertMsg(context, "Valor Dosificación.");
                        },
                      ),
                      labelText: "Insertar Valor Dosificación",),
                    maxLength: 11,
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
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
                        if(_formKey.currentState.validate()){
                          onSubmitForm();
                          //msgToast("Calculando.");
                        }else{
                          msgToast("Faltan datos para procesar la petición.");
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 10.0,),
                    Text("El resultado es: $_total kg. ", style: TextStyle(fontSize: 20.0),),
                    Text("El equivalente es: $_equivalente Ton.", style: TextStyle(fontSize: 20.0),),
                    Text("De Base asfáltica", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                ],
              ),
          )

      ),
    );
  }
}

msgToast(mensaje){
  return Fluttertoast.showToast(
      msg: mensaje,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIos: 1,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 14.0
  );
}

alertMsg(context, mensaje){
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(mensaje),
      );
    },
  );
}