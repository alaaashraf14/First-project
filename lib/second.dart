
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'detailsScreen.dart';
import 'model/Categories.dart';
class Second extends StatefulWidget {


  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body:
        Padding(
          padding: EdgeInsets.only(left: 0, top: 50, right: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Image.asset('ios/assets/images/images/menu.png',),
                  Image.asset('ios/assets/images/images/person.png'),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Hey Alex',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Find a course you want to learn',
                  style: TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F5F7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: <Widget>[

                      Image.asset("ios/assets/images/images/search.png",
                        alignment: Alignment.topRight,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Search for anything",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFA0A5BD),
                        ),
                      )
                    ],
                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Category", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),),
                      Text(
                        "See all",
                        style: TextStyle(fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: Colors.grey),
                      ),

                    ]),

              ),
              SizedBox(height: 30),
              Expanded(
                child: StaggeredGridView.countBuilder(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  crossAxisCount: 2,
                  itemCount: categories.length,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen (),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        height: index.isEven ? 150 : 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(categories[index].image),
                            fit: BoxFit.fill,

                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              categories[index].name,

                            ),
                            Text(
                              '${categories[index].numOfCourses} Courses',
                              style: TextStyle(
                                  color: Colors.pink
                              ),
                            )
                          ],

                        ),

                      ),

                    );
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),

                ),
              ),

            ],

          ),

        ),

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,color: Colors.grey,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu,color: Colors.grey,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline,color: Colors.grey,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline,color: Colors.grey,),
              label: '',
            ),
          ],

         // selectedItemColor: Colors.amber[800],

        ),

      );
  }
}

