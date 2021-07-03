import 'package:final_3/countries.dart';
import 'package:final_3/widgets.dart';
import 'package:flutter/material.dart';
import 'package:final_3/splash.dart';
import 'package:flutter/widgets.dart';
import 'package:final_3/data.dart';
import 'data.dart';
//import 'package:http/http.dart' as http;
//import 'package:flutter/data.json';
import 'dart:async'show Future;
import 'package:flutter/services.dart'show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DSC World',
      themeMode: ThemeMode.system,
     // theme: MyThemes.lightTheme,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.light(),
        accentColor: Colors.black,
        brightness: Brightness.light,
        primaryColor: Colors.blue,),
      darkTheme:ThemeData(
        colorScheme: ColorScheme.dark(),
        scaffoldBackgroundColor: Colors.grey.shade800,
          accentColor: Colors.red,
          brightness: Brightness.dark,
          primaryColor: Colors.amber
      ) ,
      debugShowCheckedModeBanner: false,
      home: screen(),
    );
  }
}
int n;
class name extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List id=["AF", "AN", "AS", "EU", "NA", "OC", "SA"];
    List continents = ["Africa","Antarctica","Asia","Europe", "North America",
      "Oceania", "South America"];
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key,this.title}):super(key: key);
  final String title;
  @override
  _HomePageState createState()=> _HomePageState();
}
class _HomePage extends StatefulWidget{
  @override
  _HomePageState createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage>{
  int _currentIndex=0;
  var _Light = false ;
  //var Theme mode = ThemeMode.system;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
         title: Text('world',style: TextStyle(fontWeight: FontWeight.bold ),),
        ),
        drawer: Drawer(
          child: ListView(
              children: [
          DrawerHeader(
          decoration: BoxDecoration(color: Colors.black),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 80,
                height: 80,
                child: CircleAvatar(
                  backgroundImage: AssetImage('image/aya.jpg'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Aya Mohamed', style: TextStyle(fontSize: 18,color: Colors.white),),
              Text('ayamohamad301@gmail.com',
                style: TextStyle(fontSize: 10,color: Colors.white ),),
            ],
          ),
        ),
                Switch(value: _Light,
                    onChanged: (toggle){
                  setState(() {
                    _Light = toggle;

                  });
                    })
        ]
      ),
      ),
        body:SingleChildScrollView(
         child: Center(
           child: Column(
            children: [
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 13)),
                FlatButton(onPressed: (){},
                //   var id = keys [index];
                //   var name = continent[index];
                //   Navigator.push(context, MaterialPageRoute(
                //     builder: (context)=> countries(id:id,name:name),),);
                // },
                  child: Column(
                      children: [
                      SizedBox(child: Image.asset('image/Europe.jpg'),height: 135,),
                        Padding(padding: EdgeInsets.only(top: 3)),
                        Text('Europe',style: TextStyle(fontWeight: FontWeight.bold),),
                     ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 3)),
                FlatButton(onPressed: (){},
                  child: Column(
                      children: [
                        SizedBox(child: Image.asset('image/Asia.jpg'),height: 135,),
                        Padding(padding: EdgeInsets.only(top: 3)),
                        Text('Asia',style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                  ),
                ),
              ],
            ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 13)),
                  FlatButton(onPressed: (){},
                    child: Column(
                      children: [
                        SizedBox(child: Image.asset('image/North America.jpg'),height: 135,),
                        Padding(padding: EdgeInsets.only(top: 3)),
                        Text('North America',style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 3)),
                  FlatButton(onPressed: (){},
                    child: Column(
                      children: [
                        SizedBox(child: Image.asset('image/Africa.jpg'),height: 135,),
                        Padding(padding: EdgeInsets.only(top: 3)),
                        Text('Africa',style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 13)),
                  FlatButton(onPressed: (){},
                    child: Column(
                      children: [
                        SizedBox(child: Image.asset('image/South America.jpg'),height: 135,),
                        Padding(padding: EdgeInsets.only(top: 3)),
                        Text('South America',style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 3)),
                  FlatButton(onPressed: (){},
                    child: Column(
                      children: [
                        SizedBox(child: Image.asset('image/Australia.jpg'),height: 135,),
                        Padding(padding: EdgeInsets.only(top: 3)),
                        Text('Australia',style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                  child: Column(
                    children: [
                      SizedBox(child: Image.asset('image/Antarctica.jpg'),height: 135,),
                      Padding(padding: EdgeInsets.only(top: 3)),
                      Text('Antarctica',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
              ),
          ],
        ),
        ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              title: Text('Favourite'),),
          ],
          onTap: (x) {
            if (x == 0) {
              setState(() {
                n = 0;
              });
            }
            if (x == 1) {
              setState(() {
                n = 1;
              });
            }
            (n == 0) ? Home() :Favourite();
            setState(() {
              _currentIndex = x;
            });
          },
          fixedColor: Colors.white,
          backgroundColor: Colors.grey.shade700,
        ),
        backgroundColor: Colors.grey.shade50,
    ),
    );
  }
}
