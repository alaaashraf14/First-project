
import 'package:flutter/material.dart';


class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white30,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black87,
          ),
          actions: <Widget>[
            Text("UI UX Design",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 25),)

          ]),


      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF5F4EF),
          image: DecorationImage(
            fit: BoxFit.fitWidth,

            image: AssetImage("lib/assets/images/UIUX.png"),
            alignment: Alignment.topRight,
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, top: 50, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[


                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 200),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Course Content",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 25)),
                          SizedBox(height: 30),
                          Card(
                            child:  CourseContent(
                              color: Colors.purpleAccent,
                              duration: 12.5 ,
                              number: "01.",

                              title: "Get to know the UI Design",
                              isDone: true,


                            ),
                          ),
                          CourseContent(
                            color: Colors.purpleAccent,
                            number: '02.',
                            title: "How to learn from Google",
                            duration: 20.31,

                            isDone: true,
                          ),
                          CourseContent(

                            color: Colors.purpleAccent,
                            number: '03.',
                            title: "How to get paid resource for free",
                            duration: 60,

                          ),
                          CourseContent(
                            color: Colors.purpleAccent,
                            number: '04.',
                            title: "Build a professional portfolio",
                            duration: 8.00,

                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),

                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 50,
                              width: 80,
                              decoration: BoxDecoration(
                                color:Colors.white,

                              ),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color:Colors.white,

                                ),
                                child: Image.asset(
                                    "lib/assets/images/heart.png"),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),

                                ),
                                child:SizedBox(
                                  width: 150,
                                  child: RaisedButton(

                                    color: Colors.purpleAccent,
                                    onPressed: () {  },
                                    child: Text(

                                        "Buy Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15)

                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseContent extends StatelessWidget {
  final String number;
  final String title;
  final double duration;
  final bool isDone;
  const CourseContent({
    Key ?key,
    required this.number,

    required this.title,
    required this.duration,
    this.isDone = false,
    required Object color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: <Widget>[
          Text(
            number,

          ),
          SizedBox(width: 10),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title mins\n",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize:15,

                  ),
                ),
                TextSpan(
                  text: "$duration mins\n",

                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 10,


                  ),
                ) ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 40,

            width: 40,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.purpleAccent
            ),
            child: Icon(Icons.play_arrow, color: Colors.white),
          )
        ],
      ),
    );
  }
}

