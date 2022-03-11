import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String resultValue;
  Result(this.resultValue);

  
  @override
  Widget build(BuildContext context) {
    
    String _findCategory(){
      String value = '';
      if(double.parse(resultValue) >= 1 && double.parse(resultValue) <= 18.5)
      {
          return value = "Thin";
      }
      else if(double.parse(resultValue) >= 18.5 && double.parse(resultValue) <= 25)
      {
          return value = "You are normal";
      }
      else if(double.parse(resultValue) >= 25 && double.parse(resultValue) <= 30)
      {
          return value = "Overweight";
      }
      if(double.parse(resultValue) >= 30)
      {
          return value = "You are obese";
      }
      return value;
    }

    return Column(
        children: [
             Row(
              children: [
               Container(
                 padding: EdgeInsets.all(10),
                 child: Text(
                    'Body Mass Index : ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                 )
               ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    this.resultValue ,
                    style: TextStyle(
                      fontSize:20 , 
                      color: Colors.grey ,
                      fontWeight: FontWeight.w600
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
            ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Category : ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    _findCategory(),
                    style: TextStyle(
                      fontSize:20 , 
                      color: Colors.grey ,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                )
            ],
            ),
          ),
          Container(
                  padding:EdgeInsets.all(15),                  
                  height:200,
                  child : 
                  (double.parse(resultValue) >= 1 && double.parse(resultValue) <= 16.5)
                  ? Image.asset('assets/images/thin.png')
                  : (double.parse(resultValue) >= 18.5 && double.parse(resultValue) <= 25) 
                    ? Image.asset('assets/images/healthy.png')
                  : (double.parse(resultValue) >= 25 && double.parse(resultValue) <= 30)
                    ? Image.asset('assets/images/fat.png')
                  : Image.asset('assets/images/obese.png')
          )
         
        ],
    );
  }
}
