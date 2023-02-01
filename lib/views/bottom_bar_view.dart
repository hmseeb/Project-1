import 'package:brain_bite/views/account_view.dart';
import 'package:brain_bite/views/home_view.dart';
import 'package:brain_bite/views/search_view.dart';
import 'package:brain_bite/views/ticket_screen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  static final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Search(),
    const TicketView(),
    const AccountView(),
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // print(_selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          elevation: 20,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.grey,
          // iconSize: 20,
          // type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 35,
                ),
                label: 'label'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 35), label: 'label'),
            BottomNavigationBarItem(
                icon: Icon(Icons.flight, size: 35), label: 'label'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 35), label: 'label'),
          ]),
    );
  }
}
