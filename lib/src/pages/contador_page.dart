

import 'package:flutter/material.dart';

class ContadorPage  extends StatefulWidget {
  

createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle (fontSize: 35, fontFamily: 'Dax-Regular');
  int _conteo = 0;



 @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cerbero.dev', style: _estiloTexto),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Number of Clicks:', style:_estiloTexto),
            SizedBox(height: 10.0),
            Text( '$_conteo', style:_estiloTexto),
          ],
        )
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: _crearBotones()
    );
  }


Widget _crearBotones() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      SizedBox(width: 30.0),
      FloatingActionButton( child: Icon(Icons.add_circle_outline), backgroundColor: Colors.deepPurpleAccent, onPressed: _agregar),
      Expanded(child: SizedBox(width: 10.0)),
      FloatingActionButton( child: Icon(Icons.remove_circle_outline), backgroundColor: Colors.deepPurpleAccent, onPressed: _restar ),
      Expanded(child: SizedBox(width: 5.0)),
      FloatingActionButton( child: Icon(Icons.exposure_zero), backgroundColor: Colors.deepPurpleAccent, onPressed: _reset),
      SizedBox(width: 25.0),
  ],
  );
}

  void _agregar() {setState(() =>   _conteo++  );}
  void _restar() {setState(() =>   _conteo--  );}
  void _reset() {setState(() =>   _conteo =0   );}

}