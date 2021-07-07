import 'package:flutter/material.dart';
import 'package:my_first_flutter/Components/seaech_bar.dart';
import '../question.dart';
import '../Components/card.dart';
import '../Components/floating_button.dart';
import '../Components/drawer.dart';
import 'package:floating_search_bar/floating_search_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Dashboard',
      style: optionStyle,
    ),
    Text(
      'Index 1: Messeges',
      style: optionStyle,
    ),
    Text(
      'Index 2: Notifications',
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
    var questions = ['wha is your name?', 'what is your age?'];
    //*************

    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CyberSIEM'),
          shadowColor: Colors.black,
          backgroundColor: Colors.blueAccent,
        ),

        //*************

        drawer: MyDrawer(),
        //*************

        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('John'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('Max'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('Maya'),
            ),

            const MyCard(),
            const MyCard(),
            const MyCard(),

            //*************
          ],
        ),
        //*************

        floatingActionButton: SearchBar(),

        //*************
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),
              label: 'Messeges',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.lightBlueAccent,
          backgroundColor: Colors.blueAccent,
          selectedFontSize: 15,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
