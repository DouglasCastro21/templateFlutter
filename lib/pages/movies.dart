import 'dart:async';


import 'package:carousel_slider/carousel_slider.dart';
import 'package:example/pages/git.dart';
import 'package:example/pages/linkedin.dart';
import 'package:example/pages/play_video.dart';
import 'package:example/pages/wikipedia.dart';
import 'package:flutter/material.dart';
import 'package:circular_menu/circular_menu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:webview_flutter/webview_flutter.dart';
class MoviesPage extends StatefulWidget {
  const MoviesPage({ Key? key }) : super(key: key);


  @override
  _MoviesPageState createState() => _MoviesPageState();

}




class _MoviesPageState extends State<MoviesPage> {
   Completer<WebViewController> _controller = Completer<WebViewController>();








  CarouselController _carouselController = new CarouselController();

  int _current = 0;

  String _colorName = 'No';
  Color _color = Colors.transparent;
  int _numeroReferencia = 0;
  String urlAnime = 'https://en.wikipedia.org/wiki/Madara_Uchiha';





  List<dynamic> _movies = [
    {
      'title': 'Mortal Kombat',
      'image': 'https://i.pinimg.com/564x/45/30/1c/45301c8188e40b2c1524451158457799.jpg',
      'description': 'Mortal Kombat'
    },

    {
      'title': 'Scorpion',
      'image': 'https://i.pinimg.com/564x/c9/ed/48/c9ed484ca3911e6fd36120fff83ed9c6.jpg',
      'description': 'Mortal Kombat'
    },



    {
      'title': 'Sub Zero',
      'image': 'https://i.pinimg.com/564x/8b/4c/45/8b4c45bd7f3c02de1f3bc449e4986ea1.jpg',
      'description': 'ninja chinês, com poderes criogênicos'
    },
    {
      'title': 'Raiden',
      'image': 'https://i.pinimg.com/564x/f6/0c/9e/f60c9eb4144985973ac8b72945ac0a5c.jpg',
      'description': 'Mortal Kombat'
    },

    {
      'title': 'KITANA',
      'image': 'https://i.pinimg.com/564x/80/72/f9/8072f96ee0996547306787f9d04c5978.jpg',
      'description': 'Mortal Kombat'
    },
    {
      'title': 'LIU KANG',
      'image': 'https://i.pinimg.com/564x/ba/76/9f/ba769f6d68b39ec6b52d01453e673b14.jpg',
      'description': 'Mortal Kombat'
    },

    {
      'title': 'KUNG LAO',
      'image': 'https://i.pinimg.com/564x/81/2c/50/812c50b94bb6b3dca3957b46f4a4bb7c.jpg',
      'description': 'Mortal Kombat'
    },


    {
      'title': 'SONYA BLADE',
      'image': 'https://i.pinimg.com/564x/56/26/dd/5626ddce573c5afcf6c8394693c2dfa3.jpg',
      'description': 'Mortal Kombat'
    },
    {
      'title': 'SHANG TSUNG',
      'image': 'https://i.pinimg.com/564x/d5/35/71/d53571274def50ee63e9c99f9f14ee24.jpg',
      'description': 'Mortal Kombat'
    },


    {
      'title': 'JADE',
      'image': 'https://i.pinimg.com/564x/41/49/d2/4149d2fcfb9b3fb1b34509dda9b15334.jpg',
      'description': 'Mortal Kombat'
    },




  ];

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.network(_movies[_current]['image'], fit: BoxFit.cover),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.grey.shade50.withOpacity(1),
                      Colors.grey.shade50.withOpacity(1),
                      Colors.grey.shade50.withOpacity(1),
                      Colors.grey.shade50.withOpacity(1),
                      Colors.grey.shade50.withOpacity(0.0),
                      Colors.grey.shade50.withOpacity(0.0),
                      Colors.grey.shade50.withOpacity(0.0),
                      Colors.grey.shade50.withOpacity(0.0),
                    ]
                  )
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 500.0,
                  aspectRatio: 16/9,
                  viewportFraction: 0.70,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                carouselController: _carouselController,

                items: _movies.map((movie) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),


                        child: SingleChildScrollView(
                          child: Column(
                            children: [



                              Container(
                                height: 320,
                                margin: EdgeInsets.only(top: 20),
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.network(movie['image'], fit: BoxFit.cover),


                              ),

                              SizedBox(height: 2),
                              Text(movie['title'], style: 
                                TextStyle(
                                  fontSize: 16.0, 
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              // rating
                              SizedBox(height: 8),
                              Container(
                                child: Text(movie['description'], style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey.shade600
                                ), textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(height: 1),


                              AnimatedOpacity(
                                duration: Duration(milliseconds: 500),
                                opacity: _current == _movies.indexOf(movie) ? 1.0 : 0.0,

                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),



                                  child: CircularMenu(

                                    alignment: Alignment.bottomCenter,
                                    backgroundWidget: Center(
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(color: Colors.transparent, fontSize: 28),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: _colorName,
                                              style:
                                              TextStyle(color: _color, fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(text:     '  gdgdfg      gfhg    fdgfdg   gfhgdgdfg   fgdfgfd   '),

                                          ],
                                        ),
                                      ),
                                    ),
                                    toggleButtonColor: Colors.pink,

                                    items: [
                                      CircularMenuItem(

                                          icon: FontAwesomeIcons.youtube,
                                          color: Colors.red,
                                          onTap: () {

                                            setState(() {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              PlayVideoExample()

                                                      )
                                                  );

                                            });

                                          }

                                          ),
                                      CircularMenuItem(

                                          icon: FontAwesomeIcons.wikipediaW,
                                          color: Colors.purple,
                                          onTap: () {
                                              setState(() {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Wikipedia()

                                                    )
                                                );

                                              }
                                              );


                                          }),
                                      CircularMenuItem(
                                          icon: FontAwesomeIcons.linkedinIn,
                                          color: Colors.blue,
                                          onTap: () {
                                            setState(() {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Linkedin()
                                                  )
                                              );

                                            });
                                          }),

                                      CircularMenuItem(
                                          icon: FontAwesomeIcons.github,
                                          color: Colors.black,
                                          onTap: () {

                                              setState(() {

                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Git()

                                                    )
                                                );


                                              }

                                              );


                                          })


                                    ],
                                  ),

                                  )
                                )





                            ],
                          ),
                        )
                      );
                    },
                  );


                }).toList(),

              ),
            )
          ],
        ),

      ),

    );



  }



}



