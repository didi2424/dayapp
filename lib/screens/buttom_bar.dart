import 'package:dayapp/screens/home_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtomBar extends StatefulWidget {
  const ButtomBar({Key? key}) : super(key: key);

  @override
  _ButtomBarState createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  int _selectedIndex = 0; //App pertama masuk ke content home set ke 0
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(), //variable untuk memanggil class pada file lain sebagai tampilan jika menu bar di klik/tap
    const Text("Search"),
    const Text("Account"),
    const Text("Settings")
  ];

  void _onItemTapped(int index) {
    //jika menu navigation bar di klik atau di tap maka tampilan body akan berubah sesuai menu navigation bar
    setState(() {
      //setState berfungsi untuk  merencanakan suatu pembaharuan ke suatu state objek komponen
      _selectedIndex = index;
    });

    // print(
    //     '${_selectedIndex}'); //print('${..variable}') berfungsi untuk menampilkan data variable
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     centerTitle: true,
      //     title: Text(
      //         "DayApp")), //appBar berfungsi sebagai bar atas atau tampilan atas
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped, //fungsi klik/tap pada flutter
          //button navigationbar berfungsi untuk menganti tampilan menu pada body
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType
              .fixed, //type button mau bisa geser atau fixed
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526480),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_settings_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_settings_filled),
                label: "Settings")
          ]),
    );
  }
}
