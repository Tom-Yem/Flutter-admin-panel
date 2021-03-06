import 'package:flutter/material.dart';

class MenuController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void controlMenu() {
    ScaffoldState? currenState = _scaffoldKey.currentState;

    if (currenState != null && !currenState.isDrawerOpen) {
      currenState.openDrawer();
    }
  }
}
