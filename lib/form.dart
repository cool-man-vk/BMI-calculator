import 'package:flutter/material.dart';



class FormInputs extends StatelessWidget{
  final _weightController ;
  final _heightController;
  final VoidCallback _submitDataFromForm;

  FormInputs(this._weightController , this._heightController , this._submitDataFromForm);
  @override 
  Widget build(BuildContext context){
      return Column(
          children: <Widget>[
            Container(
            child: Card(
              margin: EdgeInsets.all(10),
              elevation: 1,
              child: TextField(
                controller: _weightController,
                decoration: InputDecoration(
                  labelText: 'Enter the weight (in kg)..'
                ),
              keyboardType: TextInputType.number,
              ),
            ),
          ),
          Container(
            child: Card(
              margin: EdgeInsets.all(10),
              elevation: 1,
              child: TextField(
                controller: _heightController ,
                decoration: InputDecoration(
                  labelText: 'Enter the height (in cm)...'
                ),
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          RaisedButton(
            color: Colors.green,
            child: Text('Calculate my BMI',
            style: TextStyle(
                color: Colors.white
            ),
            ),
            onPressed: _submitDataFromForm,
          ),
          ],
      );
  }
}