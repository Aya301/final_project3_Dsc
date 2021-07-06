import 'dart:convert';
import 'package:final_3/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'data.dart';

class countries extends StatefulWidget {
  String id;
  String name;
  static var lenght;
  countries({Key key, this.title,@required this.id,this.name}):super(key: key);
  final String title;
  @override
  _countriesState createState()=> _countriesState();
}

class _countries extends StatefulWidget{
  @override
  _countriesState createState()=> _countriesState();
}

class _countriesState extends State<countries> {
  Map _map;
  List country;
  List languages;
  List countries = [];
  // var favCountry;
  // bool isSearching = false;
  // List filterCountries = [];

  Future<List> getCountry() async{
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);
    setState(() {
      _map = data["countries"];
      country = _map.values.toList();
    });
    for(var i =0; i < country.length; i++){
      var countryOFCon = country[i]["continent"];
      if(widget.id == countryOFCon){
        countries.add(country[i]);
      }
    }
    return countries;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'World', style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        body: ListView.builder(
          itemCount:countries.length,
          itemBuilder: (BuildContext context,int index ){
            return Card(
              child: ListTile(
                leading: Text( countries[index]["id"]),
                title: Text(countries[index]["name"]),
              ),
            );
          },
        ),
      ),
    );
  }
}