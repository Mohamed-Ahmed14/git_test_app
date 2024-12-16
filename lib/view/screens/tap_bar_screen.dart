import 'package:flutter/material.dart';
import 'package:test_app/view/screens/home_screen.dart';

import 'count_screen.dart';

class TapBarScreen extends StatelessWidget {
  const TapBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 9,
          initialIndex: 2,

          child: Column(
            children: [
              TabBar(isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  dividerHeight: 0,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                Tab(
                  text: 'Home',
                  icon: Icon(Icons.home_rounded),
                ),
                Tab(
                  text: 'Account',
                  icon: Icon(Icons.person_pin),
                ),
                Tab(
                  text: 'Photos',
                  icon: Icon(Icons.photo_album_rounded),
                ),
                    Tab(
                      text: 'Home',
                      icon: Icon(Icons.home_rounded),
                    ),
                    Tab(
                      text: 'Account',
                      icon: Icon(Icons.person_pin),
                    ),
                    Tab(
                      text: 'Photos',
                      icon: Icon(Icons.photo_album_rounded),
                    ),
                    Tab(
                      text: 'Home',
                      icon: Icon(Icons.home_rounded),
                    ),
                    Tab(
                      text: 'Account',
                      icon: Icon(Icons.person_pin),
                    ),
                    Tab(
                      text: 'Photos',
                      icon: Icon(Icons.photo_album_rounded),
                    ),
              ]),
              Expanded(
                child: TabBarView(children: [
                  HomeScreen(),
                  CountScreen(),
                  Text('Very good'),
                  HomeScreen(),
                  Text('Nice One'),
                  Text('Very good'),
                  HomeScreen(),
                  Text('Nice One'),
                  Text('Very good'),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
