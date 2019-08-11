import 'package:flutter/material.dart';

class Redeem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Easyway'),

      ),
      body: Column(
        children: <Widget>[
          Card(

            elevation: 10.0,

            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('30% Discount for 30 Days Recharge',


              style: TextStyle(
                fontSize: 25.0,
              ),),
            ),

          ),
          Card(
            elevation: 10.0,
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('10% off on long journeys',
                style: TextStyle(
                  fontSize: 25.0,
                ),),
            ),
          ),
          Card(
            elevation: 10.0,
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('Win 25 EasyWay Miles for redeeming on journey upto 10kms',
                style: TextStyle(
                  fontSize: 25.0,
                ),),
            ),
          ),
          Card(
            elevation: 10.0,
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('25% off on visiting Monuments',
                style: TextStyle(
                  fontSize: 25.0,
                ),),
            ),
          ),
          Card(
            elevation: 10.0,
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: Icon(Icons.monetization_on),
              title: Text('45% off on 5 month subscription',
                style: TextStyle(
                  fontSize: 25.0,
                ),),
            ),
          ),
          MaterialButton(
            onPressed: (){},


            child: Text('CHECK HERE HOW TO REEDEM POINTS',
            textAlign: TextAlign.center,

            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold

            ),),

          ),
        ],
      ),
    );
  }
}
