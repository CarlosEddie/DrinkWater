import 'package:drinkwater/components/my_bottom_nav_bar.dart';
import 'package:drinkwater/components/my_drawer.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class MyAvailableSoonScreen extends StatefulWidget {
  const MyAvailableSoonScreen({Key key}) : super(key: key);

  @override
  State<MyAvailableSoonScreen> createState() => _MyAvailableSoonScreenState();
}

class _MyAvailableSoonScreenState extends State<MyAvailableSoonScreen> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments;
    int _currentIndex = args;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhite,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset(
                'assets/images/menuIcon.png',
                height: 23,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: kWhite,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Disponível em breve",
                style: TextStyle(
                  color: kMainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(
        iconSize: 30,
        selectedIndex: _currentIndex,
        backgroundColor: kMainColor,
        showElevation: false,
        itemCornerRadius: 20,
        curve: Curves.easeIn,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          if (_currentIndex != 0) {
            Navigator.pushNamed(context, '/myAvailableSoonScreen',
                arguments: _currentIndex);
          } else {
            Navigator.pushNamed(context, '/myHomePage');
          }
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Icon(
              Icons.home,
              color: kWhite,
            ),
            activeColor: kLightBlue1,
            inactiveColor: kMainColor,
          ),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.notifications,
              color: kWhite,
            ),
            activeColor: kLightBlue1,
            inactiveColor: kMainColor,
          ),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.event_available,
              color: kWhite,
            ),
            activeColor: kLightBlue1,
            inactiveColor: kMainColor,
          ),
        ],
      ),
    );
  }
}
