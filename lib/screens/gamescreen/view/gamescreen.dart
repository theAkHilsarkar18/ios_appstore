import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_appstore/utils/images/game.dart';

class Gamescreen extends StatefulWidget {
  const Gamescreen({Key? key}) : super(key: key);

  @override
  State<Gamescreen> createState() => _GamescreenState();
}

class _GamescreenState extends State<Gamescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 5,),
               Text("SUNDAY, MARCH 19",style: TextStyle( color: Colors.grey,letterSpacing: 1,fontSize: 15)),
               SizedBox(height: 5,),
               Row(
                 children: [
                   Text("Game",style: TextStyle( color: Colors.black,letterSpacing: 1,fontSize: 25,fontWeight: FontWeight.bold)),
                   Spacer(),
                   CircleAvatar(
                     radius: 25,
                     backgroundColor: Colors.white,
                     backgroundImage: AssetImage("assets/today/am.png"),
                   ),
                   SizedBox(width: 10,),
                 ],
               ),
               SizedBox(height: 5,),
               Text("NEW GAME",style: TextStyle(color: Colors.blue,fontSize: 11)),
               Text("Warmer Aos Best game ever",style: TextStyle(color: Colors.black,fontSize: 16,letterSpacing: 0)),
               Text("Warmer Aos Best game ever",style: TextStyle(color: Colors.grey,fontSize: 13,letterSpacing: 0)),
               SizedBox(height: 5,),
               Container(
                 height: 200,
                 width: double.infinity,
                 margin: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: Colors.black,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("assets/game/bg.jpeg",fit: BoxFit.cover)),
               ),
               SizedBox(height: 10,),
               CupertinoListTile(title: Text("Discover More game",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 20),),trailing: Text("See all",style: TextStyle(fontSize: 12, color: Colors.blue),)),
               Expanded(
                 child: Container(
                   child: ListView.builder(itemBuilder: (context, index) => gameBox(gameImg[index],gameName[index]),shrinkWrap: true,itemCount: 4),
                 ),
               ),
             ],
          ),
        ),
      ),
    );
  }
  Widget gameBox(String img,String gname)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90,
            width: 90,
            decoration:BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("${img}",fit: BoxFit.cover)),
          ),
          SizedBox(width: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5,),
              Text("${gname}",style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1),),
              Text("Unity Game Dev. Inc.",style: TextStyle(color: Colors.grey,fontSize: 12,letterSpacing: 1),),
              SizedBox(height: 10,),
              Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Colors.blue)
                ),
                alignment: Alignment.center,
                child: Text("GET",style: TextStyle(color: Colors.blue,fontSize: 12,fontWeight: FontWeight.bold,letterSpacing: 1),
                ),

              )
            ],
          ),
        ],
      ),
    );
  }
}
