
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_app/CityPage.dart';
import 'package:gallery_app/FamilyPage.dart';
import 'package:gallery_app/FriendPage.dart';
import 'package:gallery_app/MedicalPage.dart';
import 'package:gallery_app/MusicPage.dart';
import 'package:gallery_app/NaturePage.dart';
import 'package:gallery_app/OceanPage.dart';
import 'package:gallery_app/SportsPage.dart';
import 'package:gallery_app/TechnologyPage.dart';
import 'package:gallery_app/TravelPage.dart';


import 'games_page.dart';


void main(){
  runApp( myResponsiveDesign());
}

class myResponsiveDesign extends StatelessWidget{
  const myResponsiveDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.lightGreenAccent.shade700,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 32),
          iconTheme: IconThemeData(color: Colors.white,size: 28),

        ),

        scaffoldBackgroundColor: Colors.white,


      ),
    );

  }

}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context)=>OrientationBuilder(builder: (context,orientation){

    final isLandscape = orientation == Orientation.landscape;

    return Scaffold(
      appBar: AppBar(

        title: const Text('Photo Gallery'),
        leading: IconButton(onPressed: () => {}, icon: Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.more_vert)),
        ],

      ),

      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: isLandscape ? 4: 2),

        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>CityPage()));
                  },

                  child: CustomContainer(text:'City',src: 'images/city.jpg',)),
            ),
          ),


          Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                  onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context)=>travelpage()));
                  },
                  child: CustomContainer(text:'Travel',src: 'images/travel.jpg',)
              ),
            ),
          ),


          Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                  onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context)=>gamespage()));
                  },

                  child: CustomContainer(text:'Games',src: 'images/games.jpg',)
              ),
            ),
          ),


          Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>friendpage()));
                  },
                  child: CustomContainer(text:'Friends',src: 'images/Friends.jpg',)),
            ),
          ),


          Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>musicpage()));
                  },
                  child: CustomContainer(text:'Music',src: 'images/music.jpeg',)),
            ),
          ),


          Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>naturepage()));
                  },
                  child: CustomContainer(text:'Nature',src: 'images/Nature.jpg',)),
            ),
          ),

          Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>sportspage()));
                  },
                  child: CustomContainer(text:'Sports',src: 'images/sports.png',)),
            ),
          ),

          Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>technology()));
                  },
                  child: CustomContainer(text:'Technology',src: 'images/technology.jpg',)),
            ),
          ),


          Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                  onTap: (){
                    //Navigator.push(context,MaterialPageRoute(builder: (context)=>flowerspage()));
                  },

                  child: CustomContainer(text:'Flowers',src: 'images/flowers.jpg',)),
            ),
          ),

          Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>oceanpage()));
                  },
                  child: CustomContainer(text:'Ocean',src: 'images/ocean.jpg',)),
            ),
          ),

          Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>familypage()));
                  },
                  child: CustomContainer(text:'Family',src: 'images/family.jpg',)),
            ),
          ),

          Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>medicalpage()));
                  },
                  child: CustomContainer(text:'Health',src: 'images/medical.jpg',)),
            ),
          ),



           ],
        ),

       );
      }
    );

  }

class CustomContainer extends StatelessWidget {

  final String text;
  final String src;

  const CustomContainer({required this.text, required this.src});

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.black, width: 1),
          image: DecorationImage(
              image: AssetImage('$src'),
              fit: BoxFit.cover
          ),

          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 5,
              blurRadius: 8,
              offset: Offset(0,3), // changes position of shadow
            ),

          ]
      ),
      alignment: Alignment.bottomCenter,
      child: Text('$text', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
    );
  }
}








