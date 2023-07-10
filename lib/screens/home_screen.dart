import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.personBiking,
  ];
  _buildIcon(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: selectedIndex == index ? Theme.of(context).secondaryHeaderColor : Color(0xFFE7EBEE),
            borderRadius: BorderRadius.circular(30)),
        child:
            Icon(_icons[index], size: 25, color: Theme.of(context).primaryColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 120.0),
            child: Text('What you would like to find',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          SizedBox(height:20.00),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for(int i = 0;i<_icons.length; i++) ... [
                _buildIcon(i),
              ]
            ],
          )
          // _buildIcon(0),
        ],
      ),
    )));
  }
}
