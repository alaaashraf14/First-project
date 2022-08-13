import 'package:flutter/material.dart';
import 'package:newstep/second.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              child: Column(
            children: [
              Center(child: Image.asset('ios/assets/images/images/1.png')),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 70, 5, 30),
                child: Text(
                  'Online School',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                 child: Text(
                    'Home study during the pandemic , lots of\n learning . Lots of profesional teachers,and\n '
                        '                   easy to understand',
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15,color: Colors.black),
                  ),
               ),
               Container(
                 margin: EdgeInsets.fromLTRB(0, 100, 110, 50),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(

                        onPressed: () {},
                        icon: const Icon(
                          Icons.circle_outlined,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.circle_outlined,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                      IconButton(

                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.pinkAccent,
                          size: 45,
                        ),
                      ),


           Align(
             alignment: Alignment.bottomRight,
             child:  RaisedButton(
               child: Text("Get Started"),
               color: Colors.purpleAccent,
               onPressed: () {
                 Navigator.of(context).push(
                   MaterialPageRoute(
                     builder: (context) =>Second(),
                   ),
                 );
               },
             )

           )],
                  ),
               ),


          ]
              ),
      ),
        ),
      ),

    );

  }
}

