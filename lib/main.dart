import 'dart:math';
import 'package:flutter/material.dart';
import './result.dart';
import './form.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'BMI calculator',
      home : HomePage() ,
    );
  }
}
class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _weightController = TextEditingController();
  final _heightController = TextEditingController();

  void _submitData(){
    if(_weightController.text.isEmpty || _heightController.text.isEmpty){
      return;
    }

    final enteredWeight = double.parse(_weightController.text);
    final enteredHeight = double.parse(_heightController.text);

    if (enteredHeight < 0 || enteredWeight < 0){
      return;
    }
    
    else if (enteredHeight > 300 || enteredWeight > 150){
      return;
    }
    double enteredHeightInMetre = enteredHeight / 100;
    double bmiValue = enteredWeight / (pow(enteredHeightInMetre,2));

    if ( _weightController.text.isNotEmpty ||  _heightController.text.isNotEmpty)
    {
      setState((){
          showModalBottomSheet(
            context: context, 
            builder: (_){
                return Result(bmiValue.toStringAsFixed(2).toString());
            }
          );
        }
      );
    }
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI calculator'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          FormInputs(_weightController , _heightController , _submitData),
        ],
        
      )
    );
  }
}