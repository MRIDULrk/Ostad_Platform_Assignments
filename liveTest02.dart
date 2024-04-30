
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


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

    );

  }

}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Profile'),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 32),

      ),
      body:Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20,10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: Container(

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    //border: Border.all(color: Colors.black, width: 1),
                    image: DecorationImage(
                        image: AssetImage('images/mtb.jpg'),
                        fit: BoxFit.cover
                    ),

                  ),

                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(20,0, 20,0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Text('Matilda Brown',
                textAlign: TextAlign.center,
                style:TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),

              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(20,0, 20,0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Text('matildabrown@gmail.com',
                textAlign: TextAlign.center,
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black26,
                ),

              ),
            ),
          ),


          Padding(
            padding: EdgeInsets.fromLTRB(20,0, 20,0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Text('Lorem Ipsum is simply dummy text of the printin'
                  'and typesetting industry. Lorem Ipsum has been the industry'
                  'Lorem Ipsum is simply dummy text of the printin'
                  'Lorem Ipsum is simply dummy text of the printin'
                  'Lorem Ipsum is simply dummy text of the printin'
                  'Lorem Ipsum is simply dummy text of the printin',
                textAlign: TextAlign.center,
                style:TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),

              ),
            ),
          ),


        ],
      ),

    );
  }

}

