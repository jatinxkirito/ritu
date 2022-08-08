import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'intro.dart';
String idche(String ind,int tim)
{
  if(ind=="804")
  {return "darkclouds";}
  else if(ind=="803"||ind=="802"||id=="801")
    {
      if(tim>=7&&tim<=19)
        return "cscaday";
      else
        return "cscanight";
    }
  else if(ind=="781")
    return "tornado";
  else if(ind=="761"||ind=="751"||ind=="731")
    return "dust";
  else if(ind=="741"||ind=="721"||ind=="701")
    return "mist";
  else if(ind=="622"||ind=="621"||ind=="620")
    return "snowstrom";
  else if(ind=="616"||ind=="615"||ind=="613"||ind=="612"||ind=="611"||ind=="602"||ind=="601"||ind=="600")
    return "snow";
  else if(ind=="501"||ind=="511"||ind=="520"||ind=="522"||ind=="521"||ind=="531")
    return "rain";
  else if(ind=="500"||ind=="300"||ind=="301"||ind=="302"||ind=="310"||ind=="311"||ind=="312"||ind=="313"||ind=="314"||ind=="321")
    return "drizz";
  else if(ind=="502"||ind=="503"||ind=="504"||ind=="200"||ind=="201"||ind=="202"||ind=="210"||ind=="211"||ind=="212"||ind=="221"||ind=="230"||ind=="231"||ind=="232")
    return "thunderstrom";
  else if(ind=="800"&&(tim>=19||tim<=6))
    return "clearnight";
  else{
    return "clear";
  }
}
IconData icob(String ind,int tim)
{
  if(ind=="804")
  {return WeatherIcons.cloudy;}
  else if(ind=="803"||ind=="802"||id=="801")
  {
    if(tim>=7&&tim<=19)
      return WeatherIcons.day_cloudy;
    else
      return WeatherIcons.night_alt_cloudy;
  }
  else if(ind=="781")
    return WeatherIcons.tornado;
  else if(ind=="761"||ind=="751"||ind=="731")
    return WeatherIcons.dust;
  else if(ind=="741"||ind=="721"||ind=="701")
    return WeatherIcons.fog;
  else if(ind=="622"||ind=="621"||ind=="620")
    return WeatherIcons.snow_wind;
  else if(ind=="616"||ind=="615"||ind=="613"||ind=="612"||ind=="611"||ind=="602"||ind=="601"||ind=="600")
    return WeatherIcons.snow;
  else if(ind=="500"||ind=="501"||ind=="520"||ind=="521"||ind=="300"||ind=="301")
    {
      if(tim>=7&&tim<=19)
        return WeatherIcons.day_rain_mix;
      else
        return WeatherIcons.night_rain_mix;
    }
  else if(ind=="502"||ind=="503"||ind=="504"||ind=="511"||ind=="522"||ind=="531"||ind=="302"||ind=="310"||ind=="311"||ind=="312"||ind=="313"||ind=="314"||ind=="321")
  {

      return WeatherIcons.rain;

  }
  else if(ind=="200"||ind=="201"||ind=="202"||ind=="210"||ind=="211"||ind=="212"||ind=="221"||ind=="230"||ind=="231"||ind=="232")
    return WeatherIcons.thunderstorm;
  else if(ind=="800"&&(tim>=19||tim<=6))
    return WeatherIcons.night_clear;
  else{
    return WeatherIcons.day_sunny;
  }
}
IconData dir(int dirk)
{
  if(dirk==0)
    return WeatherIcons.wind_deg_0;
  else if(dirk>0&&dirk<90)
    return WeatherIcons.wind_deg_0;
  else if(dirk>0&&dirk<90)
    return WeatherIcons.wind_deg_45;
  else if(dirk==90)
    return WeatherIcons.wind_deg_90;
  else if(dirk>90&&dirk<180)
    return WeatherIcons.wind_deg_135;
  else if(dirk==180)
    return WeatherIcons.wind_deg_180;
  else if(dirk>180&&dirk<270)
    return WeatherIcons.wind_deg_225;
  else if(dirk==270)
    return WeatherIcons.wind_deg_270;
  else if(dirk>270&&dirk<360)
    return WeatherIcons.wind_deg_315;
  else
    return WeatherIcons.wind_deg_0;

}

