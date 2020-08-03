import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Numero de taps or click!!',
            style: _estiloTexto,
          ),
          Text(
            '$_conteo',
            style: _estiloTexto,
          )
        ],
      )),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      SizedBox(
        width: 30.0,
      ),
      FloatingActionButton(onPressed: _reset, child: Icon(Icons.refresh)),
      Expanded(child: SizedBox()),
      FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add)),
      SizedBox(width: 5.0,),
      FloatingActionButton(
        onPressed: _disminuir,
        child: Icon(Icons.remove),
      )
    ]);
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _disminuir() {
    setState(() => _conteo--);
  }

  void _reset(){
    setState(() => _conteo = 0);
  }
}
