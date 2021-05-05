import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex=0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color:Colors.black);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'TAP:0',
      style: optionStyle,
    ),
    Text(
      'TAP:1',
      style: optionStyle,
    ),
    Text(
      'TAP:2',
      style: optionStyle,
    ),
    Text(
      'TAP:3',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('BottomAppBar With FAB',style:TextStyle(fontSize: 25) ,),
          backgroundColor:Colors.deepPurple,
          centerTitle: true,
        ),
        floatingActionButton:FloatingActionButton(
          child:Icon(Icons.add,) ,
          backgroundColor: Colors.deepPurple,
          onPressed: (){},
          ),
          floatingActionButtonLocation: 
          FloatingActionButtonLocation.centerDocked,
        body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, color:Colors.white),
            label:'This',
            backgroundColor:Colors.indigo,
          
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers_sharp,color:Colors.white),
            label: 'Is',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_sharp,color:Colors.white),
            label: 'Bottom',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.error_outline,color:Colors.white),
            label: 'Bar',
          ),
        ],
     
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    ),
      );
    
  }
}

