import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class home_screen extends StatelessWidget{
  @override
   Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Mortage Calculator'),

      ),
      body: Container(
        color: Theme.of(context).primaryColorLight,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Card1(),Card2()
          ],
        ),
      ),
    );
  }
}


class Card1 extends StatefulWidget {
  @override
  _Card1State createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:10,left: 5,right: 5,bottom: 10),
      width: MediaQuery.of(context).size.width,
      height: 130,
      child: Card(
        color: Theme.of(context).primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Monthly Payments',style: Theme.of(context).textTheme.bodyText1,),
            SizedBox(height: 10,),
            Text('\$586',style: Theme.of(context).textTheme.bodyText1),
          ],
        ),

      ),
    );
  }
}


class Card2 extends StatelessWidget {
  var _interest=4.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Home Price',
                  labelStyle: Theme.of(context).textTheme.bodyText2,
                  prefixIcon: Icon(Icons.home),
                  hoverColor: Theme.of(context).primaryColorLight,

                ),
                style: Theme.of(context).textTheme.bodyText2,
                keyboardType: TextInputType.numberWithOptions(),
              ),
              SizedBox(height: 7,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Length of Loan(years)',style: Theme.of(context).textTheme.bodyText2,),
                  IconButtonCreate(icon:'-'),Text('30',style: Theme.of(context).textTheme.bodyText2,),IconButtonCreate(icon:'+'),
                ],
              ),
              SizedBox(height: 7,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Interest',style: Theme.of(context).textTheme.bodyText2),
                  Text('4.09\%')
                ],
              ),
              SizedBox(height: 7,),
              Slider(max: 12.0,min:4.0,value: _interest,divisions: 8,onChanged: (val)=>{},activeColor: Theme.of(context).primaryColorLight,),
            ],
          ),
        ),
      ),
    );
  }
}


class IconButtonCreate extends StatelessWidget {
  final String icon;

  const IconButtonCreate({Key key, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>{},
      borderRadius: BorderRadius.all(Radius.circular(12)),
      child: Container(
        alignment: Alignment.center,
        child: Text(icon),
        height: 40,
        width: 40,
      ),
    );
  }
}
