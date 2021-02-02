// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_start_app/screen/home_screen.dart';
import 'package:flutter_start_app/widget/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            //슬라이드로 화면 스크린 전환 막기
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              //홈 화면 호출
              HomeScreen(),
              Container(
                child: Center(
                  child: Text('검색'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('저장'),
                ),
              ),
              Container(
                  child: Center(
                child: Text('목록'),
              )),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
