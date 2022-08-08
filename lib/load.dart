
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:async';
import 'intro.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';
var latit;
var longi;
double longi2=0.00000,latit2=0.000;
double temmid=0.0,temd=0.0,temmad=0.0,temfeed=0.0;
int temmii=0,temi=0,temmai=0,temfeei=0;
var dsc=" ";
var jgh=" ";
var dep=" ";
var cont=" ";
double tet=0.0;
 String address="ch";

const apik='4d5f858963108438bf7c0a9e4864fd1f';
class lod extends StatefulWidget {
  const lod({Key? key}) : super(key: key);

  @override

  _lodState createState() => _lodState();
}
class _lodState extends State<lod> {
  @override
    void initState()  {
    super.initState();
     loco();
    // kkr();
    // navi();
  }
  Future<void> loco() async{

    Position po = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    latit=po.latitude;
    print(latit);
    longi=po.longitude;
    longi2=po.longitude;
    latit2=po.latitude;
    List pm= await placemarkFromCoordinates(po.latitude,po.longitude);
    Placemark pitb=pm[0];
     address=pitb.locality.toString();
    city="${pitb.administrativeArea}";
    lat=po.latitude.toString();

    long=po.longitude.toString();
    ele=po.altitude.toString();
    spe=po.altitude.toString();
    print(address);
    var uri=Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=$latit2&lon=$longi2&appid=4d5f858963108438bf7c0a9e4864fd1f&units=metric');
    Response rr= await get(uri);
    print(rr.body);
    var kuch=jsonDecode(rr.body.toString());
    dsc=kuch['weather'][0]['description'];
    jgh=kuch['name'];
    dep=kuch['weather'][0]['main'].toString();
    cond=kuch['weather'][0]['main'].toString();
    descr=kuch['weather'][0]['description'].toString();
    id=kuch['weather'][0]['id'].toString();
    temd=kuch['main']['temp'];
    temi=temd.toInt();
    tem=temi.toString();
    temmid=kuch['main']['temp_min'];
    temmii=temmid.toInt();
    temin=temmii.toString();
    temmad=kuch['main']['temp_max'];
    temmai=temmad.toInt();
    temax=temmai.toString();
    temfeed=(kuch['main']['feels_like']);
    temfeei=temfeed.toInt();
    temfee=(temfeei).toString();
    hum=kuch['main']['humidity'].toString();
    winspe=kuch['wind']['speed'].toString();
    winddire=kuch['wind']['deg'].toString();
    angl=kuch['wind']['deg'];
    clpre=kuch['clouds']['all'].toString();
    pres=kuch['main']['pressure'].toString();
    // cont=kuch['sys']['country'];
    tet=kuch['main']['temp'];
    print(jgh);
    print(dsc);
    print(tet);

    await Future.delayed(Duration(milliseconds: 300),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>mk()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1c99e6),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Writu",style: TextStyle(color: Colors.white,fontSize: 150,shadows: [
          Shadow(
            color: Colors.white,
            blurRadius: 10,
          )
        ],),),
            SizedBox(
              height: 10,
            ),
            SpinKitRotatingCircle(
              size: 40,
              color: Colors.white,
            ),
          ],
        ),
    );
  }
}
