import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:weather_icons/weather_icons.dart';
import 'search.dart';
import 'brain.dart';
import 'package:video_player/video_player.dart';
import 'load.dart';
// import 'package:flutter/material.dart';
import 'load.dart';
String lat="pk";
int angl=0;
var now=DateTime.now();
String chwe="";
int ch=now.hour;
String long=" ";
String ele=" ";
String spe=" ";
String tem="25.00",temin="25.00",temax="25.00",temfee="25.00",winspe="2.00",winddire="0.00",pres="1000.00",clpre="0.00",hum="20.00",id="800";
String cond="",descr="";

String city="please check loacaton services";
class mk extends StatefulWidget {
  const mk({Key? key}) : super(key: key);

  @override
  _mkState createState() => _mkState();
}

class _mkState extends State<mk> {

  VideoPlayerController cont=VideoPlayerController.asset("assets/clearnight.mp4");
  bool _visible = false;
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
     chwe=idche(id,ch);

    cont=VideoPlayerController.asset("assets/$chwe.mp4");
      cont..initialize().then((_) {
      cont.setLooping(true);
      setState(() {
        cont.play();
        _visible=true;
      });
    });
  }
  @override
  void dispose() {
    super.dispose();
    if (cont != null) {
      cont.dispose();
    }
  }

  _getVideoBackground() {
    return AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: Duration(milliseconds: 1000),
      child: VideoPlayer(cont),
    );
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>search()));
              } ,icon: Icon(
                Icons.search_outlined,
                color: Colors.white,
                size: 40,
              )
              );
            },
          ),
          centerTitle: true,
          title: FittedBox(
    fit: BoxFit.fitWidth,
    child: Text(address,textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 45,shadows: [
      Shadow(
        color: Colors.white,
        blurRadius: 10,
      )
    ],),),
        ),
          actions: [
            IconButton(onPressed: (){
              setState(() {
              });

            } ,icon: Icon(
              Icons.location_on_rounded,
              color: Colors.white,
              size: 40,
            )
            ),
          ],
        ),
        body: Stack(
          children: [
            _getVideoBackground(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Flexible(
                flex: 12,
                  child: SizedBox()),
              Flexible(
                flex: 7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("$tem\u1d52C",style: TextStyle(color: Colors.white,fontSize: 70,
                    shadows: [
                      Shadow(
                        color: Colors.white,
                        blurRadius: 10,
                      )
                    ],
                    ),),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          icob(id, ch),
                          // WeatherIcons.day_sunny,
                          color: Colors.white,
                          size: 55,
                          shadows: [
                            Shadow(
                              color: Colors.white,
                              blurRadius: 10,
                            )
                          ],
                        ),
                        Text(cond,style: TextStyle(color: Colors.white,fontSize: 20,
                          shadows: [
                            Shadow(
                              color: Colors.white,
                              blurRadius: 10,
                            )
                          ],
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 13,
                fit: FlexFit.tight,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffb2b2b2).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  WeatherIcons.thermometer,
                                  // WeatherIcons.day_sunny,
                                  color: Colors.white,
                                  size: 35,
                                  shadows: [
                                    Shadow(
                                      color: Colors.white,
                                      blurRadius: 10,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text("Min            $temin\u1d52C",style: TextStyle(color: Colors.white,fontSize: 21,),),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Max           $temax\u1d52C",style: TextStyle(color: Colors.white,fontSize: 21)),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Feels like   $temfee\u1d52C",style: TextStyle(color: Colors.white,fontSize: 21)),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xffb2b2b2).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  icob(id, ch),
                                  // WeatherIcons.day_sunny,
                                  color: Colors.white,
                                  size: 35,
                                  shadows: [
                                    Shadow(
                                      color: Colors.white,
                                      blurRadius: 10,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            // SizedBox(
                            //   height: 30,
                            // ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(cond,style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold,shadows: [
                                    Shadow(
                                      color: Colors.white,
                                      blurRadius: 10,
                                    )
                                  ],),),
                                ),
                              ],
                            ),
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Text(descr,style: TextStyle(color: Colors.white,fontSize: 21)),
                            SizedBox(
                              height: 25,
                            ),
                            // Text("Feels like   $temfee\u1d52C",style: TextStyle(color: Colors.white,fontSize: 21)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 20,
                fit: FlexFit.tight,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xffb2b2b2).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                   WeatherIcons.barometer,
                                  // WeatherIcons.day_sunny,
                                  color: Colors.white,
                                  size: 35,
                                  shadows: [
                                    Shadow(
                                      color: Colors.white,
                                      blurRadius: 10,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            // SizedBox(
                            //   height: 30,
                            // ),
                            Text("Wind speed         $winspe m/s",style: TextStyle(color: Colors.white,fontSize: 21,),),
                            // SizedBox(
                            //   height: 15,
                            // ),
                            Row(
                              children: [
                                Text("Direction                ",style: TextStyle(color: Colors.white,fontSize: 21)),
                                Icon(
                                  dir(angl),
                                  // WeatherIcons.day_sunny,
                                  color: Colors.white,
                                  size: 35,
                                  shadows: [
                                    Shadow(
                                      color: Colors.white,
                                      blurRadius: 10,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            // SizedBox(
                            //   height: 15,
                            // ),
                            Text("Pressure             $pres hPa",style: TextStyle(color: Colors.white,fontSize: 21)),
                            // SizedBox(
                            //   height: 15,
                            // ),
                            Text("Humidity             $hum %",style: TextStyle(color: Colors.white,fontSize: 21)),
                            // SizedBox(
                            //   height: 15,
                            // ),
                            Text("Cloudiness         $clpre %",style: TextStyle(color: Colors.white,fontSize: 21)),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ]
          ),
        ],
        ),
      ),
    );
  }
}
