import 'package:flutter/material.dart';
//import 'package:petitparser/petitparser.dart';
import 'dart:math' as math;
//import 'package:petitparser/src/core/parser.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Calculadora'),
    );
  }
}
String pantalla = '0';
class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key, required this.title});


  //final _oControladorInputNumeros.text = '0';
  final String title;
  //const String pantalla = '0';
  final String acumuladorTexto='';


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}




class buttonStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _MyHomePageState aja = new _MyHomePageState();
    return new GestureDetector(
        onTap: () {
          //_MyHomePageState.ingresarnumero(text);
          //ingresarnumero(text);
          //pantalla=pantalla+text;
          //aja.agregarNumero();
          final updatedText = aja._controller.text+text;
          aja._controller.value=aja._controller.value.copyWith(
            text:updatedText,
            selection: TextSelection.collapsed(offset: updatedText.length),
          );
          //aja._controller.text=text;
          print(aja._controller.text);

        },
        child: new Container(
          margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
              color: Colors.white24),
          child: new Text(
            text,
            style: new TextStyle(color: Colors.white, fontSize: 26.0),
          ),
        ));
  }
  String text;

  buttonStyle(this.text);


}
void ingresarnumero(String texto){
  print(texto);
  pantalla=texto;
  print(pantalla);

}
//final String numero='Americano';
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var num1 = 0, num2 = 0, sum = 0,factor=0;
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.text = '0';
  }
  @override
  void agregarNumero(){
    setState(() {
      num1=int.parse(_controller.text);
      print(num1);
    });
  }



  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 3,
                child: new Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.black,
                    child: new TextField(
                      enabled:false,
                    controller: _controller,
                    style: new TextStyle(
                    color: Colors.white, fontSize: 50.0),
                      decoration: InputDecoration(
                        border: InputBorder.none
                      ),
                    ),),
              ),
              Flexible(
                flex: 5,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.black,
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              new GestureDetector(
                            onTap:(){
                              _controller.text='0';
                            },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 73,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    'AC',
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap:(){
                                  if(_controller.text=='0'){
                                    _controller.text='7';
                                  }
                                  else{
                                    _controller.text=_controller.text+'7';
                                  }


                                },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 73,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    '7',
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap:(){
                                  if(_controller.text=='0'){
                                    _controller.text='4';
                                  }
                                  else{
                                    _controller.text=_controller.text+'4';
                                  }
                                },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 73,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    '4',
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap:(){
                                  if(_controller.text=='0'){
                                    _controller.text='1';
                                  }
                                  else{
                                    _controller.text=_controller.text+'1';
                                  }
                                },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 73,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    '1',
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap:(){
                                  if(_controller.text=='0'){
                                    _controller.text='0';
                                  }
                                  else{
                                    _controller.text=_controller.text+'0';
                                  }
                                },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 70,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    '0',
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new GestureDetector(
                                onTap:(){
                                  _controller.text='0';
                                },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 73,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    'CE',
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              ),
                              new GestureDetector(
                                onTap:(){
                                  if(_controller.text=='0'){
                                    _controller.text='8';
                                  }
                                  else{
                                    _controller.text=_controller.text+'8';
                                  }
                                },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 73,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    '8',
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              ),
                              new GestureDetector(
                                onTap:(){
                                  if(_controller.text=='0'){
                                    _controller.text='5';
                                  }
                                  else{
                                    _controller.text=_controller.text+'5';
                                  }
                                },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 73,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    '5',
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              ),
                              new GestureDetector(
                                onTap:(){
                                  if(_controller.text=='0'){
                                    _controller.text='2';
                                  }
                                  else{
                                    _controller.text=_controller.text+'2';
                                  }
                                },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 73,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    '2',
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              ),
                              new GestureDetector(
                                onTap:(){
                                  if(_controller.text=='.'){
                                    _controller.text='.';
                                  }
                                  else{
                                    _controller.text=_controller.text+'.';
                                  }
                                },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 70,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    '.',
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new GestureDetector(
                                onTap:(){
                                  double numerito = double.parse(_controller.text);
                                  double numeritoFinal=numerito/100;
                                  _controller.text=numeritoFinal.toString();
                                },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 73,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    '%',
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              ),
                              new GestureDetector(
                                onTap:(){
                                  if(_controller.text=='0'){
                                    _controller.text='9';
                                  }
                                  else{
                                    _controller.text=_controller.text+'9';
                                  }
                                },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 73,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    '9',
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              ),
                              new GestureDetector(
                                onTap:(){
                                  if(_controller.text=='0'){
                                    _controller.text='6';
                                  }
                                  else{
                                    _controller.text=_controller.text+'6';
                                  }
                                },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 73,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    '6',
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              ),
                              new GestureDetector(
                                onTap:(){
                                  if(_controller.text=='0'){
                                    _controller.text='3';
                                  }
                                  else{
                                    _controller.text=_controller.text+'3';
                                  }
                                },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 73,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    '3',
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              ),
                              new GestureDetector(
                                onTap:(){

                                  Parser p = new Parser();
                                  Expression exp = p.parse(_controller.text);
                                  ContextModel cm = ContextModel();
                                  String result = exp.evaluate(EvaluationType.REAL, cm).toString();
                                  result;
                                  print(result);
                                  _controller.text=result;
                                },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 70,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    '=',
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //"\u00F7"
                            children: <Widget>[
                              new GestureDetector(
                                onTap:(){
                                  if(_controller.text=='0'||_controller.text==''){
                                    _controller.text='';
                                  }
                                  else{
                                    _controller.text=_controller.text+'/';
                                  }
                                },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 73,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    "\u00F7",
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              ),
                              new GestureDetector(
                                onTap:(){
                                  if(_controller.text=='0'||_controller.text==''){
                                    _controller.text='';
                                  }
                                  else{
                                    _controller.text=_controller.text+'*';
                                  }
                                },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 73,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    '*',
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              ),
                              new GestureDetector(
                                onTap:(){
                                  if(_controller.text=='0'||_controller.text==''){
                                    _controller.text='';
                                  }
                                  else{
                                    _controller.text=_controller.text+'-';
                                  }
                                },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 73,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    '-',
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              ),
                              new GestureDetector(
                                onTap:(){
                                  if(_controller.text=='0'||_controller.text==''){
                                    _controller.text='';
                                  }
                                  else{
                                    _controller.text=_controller.text+'+';
                                  }
                                },
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(3, 3, 3, 15),
                                  height: 160,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                                      color: Colors.white24),
                                  child: new Text(
                                    '+',
                                    style: new TextStyle(color: Colors.white, fontSize: 26.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
