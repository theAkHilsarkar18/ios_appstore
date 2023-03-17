import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_appstore/screens/basescreen/provider/baseprovider.dart';
import 'package:ios_appstore/screens/homescreen/view/homescreen.dart';
import 'package:provider/provider.dart';

class Basescreen extends StatefulWidget {
  const Basescreen({Key? key}) : super(key: key);

  @override
  State<Basescreen> createState() => _BasescreenState();
}

class _BasescreenState extends State<Basescreen> {

  @override
  Widget build(BuildContext context) {
    Baseprovider? baseprovider = Provider.of(context,listen: false);
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.white,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.today),),
        BottomNavigationBarItem(icon: Icon(Icons.sports_esports_outlined),),
        BottomNavigationBarItem(icon: Icon(Icons.apps),),
      ]),
      tabBuilder: (context, index) => baseprovider!.screenList[index],
    );
  }
}
