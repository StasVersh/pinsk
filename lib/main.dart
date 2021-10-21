import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinsk/pages/widgets/home.dart';
import 'package:pinsk/pages/widgets/search.dart';
import 'package:pinsk/pages/widgets/settings.dart';

void main() {
  runApp(const Start());
}

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  int currentIndex=0;

  Widget getPage(int index) {
    setState(() {
      currentIndex = index;
    });
    if (index==0) return HomeScreen();
    if (index==1) return SearchScreen();
    return SettingsScreen();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: getPage(currentIndex),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) => getPage(value),
            currentIndex: currentIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.home),
                  backgroundColor: Colors.grey,
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.search),
                  backgroundColor: Colors.redAccent,
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.cogs),
                  backgroundColor: Colors.blueGrey,
                  label: 'Settings')
            ],
          ),
        ),
    );
  }
}
