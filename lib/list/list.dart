import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/** Total List Work Scroll Horizontal Work **/

class list extends StatelessWidget {
  Container lists(String imagephase, imgname) {
    return Container(
        padding: EdgeInsets.only(top: 10, left: 5, right: 5),
        width: 180,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imagephase), fit: BoxFit.contain),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.white.withOpacity(0.0),
                            Colors.blue.withOpacity(0.75),
                          ],
                          stops: [
                            0.0,
                            1.0
                          ])),
                ),
                Positioned(
                  bottom: 10.0,
                  left: 15.0,
                  child: Text(
                    imgname,
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ))
    );
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 35),
          margin: EdgeInsets.only(left: 10, right: 10),
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              lists('img/smile.jpg', "Ishq Hassan"),

              lists('img/awa3.jpg', "Awais Ur Rehman"),
              lists('img/gates.jpg', "Bill Gates"),
              lists('img/usama.jpg', "Usama Hussain"),
              lists('img/arbaz.jpg', "Arbaz Pirwani"),
              lists('img/jobs.jpg', "Steve Jobs"),
              lists('img/person.jpg', "Ahmad Ismail"),
              lists('img/awa.jpg', "Andrew Thomas"),
              lists('img/awa2.jpg', "Anthony Jack"),

            ],

          ),
        ),
      ],
    );
  }

}