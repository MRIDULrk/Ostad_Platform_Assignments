import 'package:flutter/material.dart';
import 'package:gallery_app/CityPage.dart';
import 'package:gallery_app/MusicPage.dart';


import 'main.dart';

class travelpage extends StatelessWidget {
  travelpage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

        appBar: AppBar(
          title: Text('Travel'),
          leading: IconButton(onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));
          }, icon: Icon(Icons.arrow_back_ios)),
          actions: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.more_vert)),
          ],
        ),


        body:OrientationBuilder(builder: (context,orientation){

          if(orientation == Orientation.portrait){
            return Column(
              children: [
                //Flexible(
                //fit: FlexFit.tight,
                //child:
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20,10),
                  child: SizedBox(
                    width: size.width,
                    height: 250,
                    child: Container(

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          //border: Border.all(color: Colors.black, width: 1),
                          image: DecorationImage(
                              image: AssetImage('images/travel.jpg'),
                              fit: BoxFit.cover
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: Offset(0,3), // changes position of shadow
                            ),
                          ]
                      ),

                    ),
                  ),
                ),
                //),

                Padding(
                  padding: EdgeInsets.fromLTRB(20,0, 20,0),
                  child: SizedBox(
                    width: size.width,
                    height: 50,
                    child: Text('Move to the World.',
                      textAlign: TextAlign.start,
                      style:TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),

                    ),
                  ),
                ),


                Padding(
                  padding: EdgeInsets.fromLTRB(20,10, 20,10),
                  child: SizedBox(
                    width: size.width,
                    height: 100,
                    child: Text('Travel brings power and love back into your life and refresh the mind with a lots of adventures.',
                      textAlign: TextAlign.start,
                      style:TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),

                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(20,5,20,5),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(onPressed: (){

                    },
                      child:Text('See More',
                          style: TextStyle(color: Colors.white,fontSize: 28, fontWeight: FontWeight.bold)
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity,double.infinity),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        backgroundColor: Colors.lightGreenAccent.shade700,
                      ),

                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(20,0, 20,0),
                  child: SizedBox(
                    width: size.width,
                    height: 50,
                    child: Text('Suggesion',
                      textAlign: TextAlign.start,
                      style:TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),

                    ),
                  ),
                ),


                Flexible(
                  fit: FlexFit.tight,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20,0, 20,0),
                    child:GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
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
                      ],

                    ),
                  ),
                ),

              ],
            );

          }else{

            return Row(
              children: [
                Padding(
                  padding:EdgeInsets.fromLTRB(10,10, 10,10),
                  child: AspectRatio(
                    aspectRatio: 9/8,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          //border: Border.all(color: Colors.black, width: 1),
                          image: DecorationImage(
                              image: AssetImage('images/travel.jpg'),
                              fit: BoxFit.cover
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: Offset(0,3), // changes position of shadow
                            ),
                          ]
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding:EdgeInsets.fromLTRB(5,0, 5,0),
                  child: AspectRatio(
                    aspectRatio: 10/8,

                    child: SingleChildScrollView(
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding: EdgeInsets.fromLTRB(10,10, 5,5),
                            child: Text('Lets Move To The World.',
                              textAlign: TextAlign.start,
                              style:TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),

                            ),

                          ),

                          Padding(
                            padding: EdgeInsets.fromLTRB(10,5, 5,5),
                            child: Text('Travel brings power and love back into your life and refresh the mind with a lots of adventures.',
                              textAlign: TextAlign.start,
                              style:TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              ),

                            ),

                          ),


                          Padding(
                            padding: EdgeInsets.fromLTRB(20,5, 20,5),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 40,
                              child: ElevatedButton(onPressed: (){

                              },
                                child: Text('See More',
                                    style: TextStyle(color: Colors.white,fontSize: 28, fontWeight: FontWeight.bold)
                                ),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(double.infinity,double.infinity),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  backgroundColor: Colors.lightGreenAccent.shade700,
                                ),

                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.fromLTRB(10,0, 10,0),
                            child: Text('Suggesion',
                              textAlign: TextAlign.start,

                              style:TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),

                            ),

                          ),

                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            child: GridView(
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: InkWell(
                                        onTap: (){
                                          Navigator.push(context,MaterialPageRoute(builder: (context)=>CityPage()));
                                        },
                                        child: SuggesionContainer(text:'City',src: 'images/city.jpg',)),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: InkWell(
                                        onTap: (){
                                          Navigator.push(context,MaterialPageRoute(builder: (context)=>musicpage()));
                                        },
                                        child: SuggesionContainer(text:'Music',src: 'images/music.jpeg',)),
                                  ),
                                ]
                            ),
                          ),

                        ],


                      ),
                    ),

                  ),
                ),


              ],
            );

          }

        },)

    );
  }
}

class SuggesionContainer extends StatelessWidget {

  final String text;
  final String src;

  const SuggesionContainer({required this.text, required this.src});

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

      ),
      alignment: Alignment.bottomCenter,
      child: Text('$text', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
    );
  }
}



