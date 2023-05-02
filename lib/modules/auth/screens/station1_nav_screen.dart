import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_app/modules/auth/screens/station1_home_screen.dart';

class Station1Navigator extends StatelessWidget {
  const Station1Navigator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Station1BottomNavigator()
    );
  }
}
 
class Station1BottomNavigator extends StatefulWidget {
  const Station1BottomNavigator({super.key});

  @override
  State<Station1BottomNavigator> createState() => _Station1BottomNavigatorState();
}

class _Station1BottomNavigatorState extends State<Station1BottomNavigator> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    Station1(),
    //UserInfo(),
  ];
  void _onTappedIndex(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: (_pages.elementAt(_selectedIndex)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_sharp,),
            label:'New record',
            backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chat',
            backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
            backgroundColor: Colors.white)
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _onTappedIndex,),
    );
  }
}