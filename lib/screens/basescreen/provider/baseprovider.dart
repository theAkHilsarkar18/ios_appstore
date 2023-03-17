
import 'package:flutter/cupertino.dart';
import 'package:ios_appstore/screens/gamescreen/view/gamescreen.dart';
import 'package:ios_appstore/screens/homescreen/view/homescreen.dart';

import '../../appscreen/view/appscreen.dart';

class Baseprovider extends ChangeNotifier
{
  List screenList = [
    Homescreen(),
    Gamescreen(),
    Appscreen(),
  ];
}