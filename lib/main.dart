import 'package:flutter/cupertino.dart';
import 'package:ios_appstore/screens/appscreen/view/appscreen.dart';
import 'package:ios_appstore/screens/basescreen/provider/baseprovider.dart';
import 'package:ios_appstore/screens/basescreen/view/basescreen.dart';
import 'package:ios_appstore/screens/gamescreen/view/gamescreen.dart';
import 'package:ios_appstore/screens/homescreen/view/homescreen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Baseprovider(),),
      ],
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (p0) => Basescreen(),
          'home' : (p0) => Homescreen(),
          'game' : (p0) => Gamescreen(),
          'app' : (p0) => Appscreen(),
        },
      ),
    ),
  );
}