import 'package:flutter/material.dart';
import 'newscard.dart';


class Dashbordscreen extends StatefulWidget {
  const Dashbordscreen({super.key});

  @override
  State<Dashbordscreen> createState() => _DashbordscreenState();
}

class _DashbordscreenState extends State<Dashbordscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body :  ListView(
      
      shrinkWrap: true ,
      scrollDirection: Axis.vertical,
      children: [Text('NEWS',style :TextStyle(
                  fontFamily: "League",
                  fontSize: 23,
                  fontWeight: FontWeight.bold)),NewsCard(), NewsCard(
                    time: "26 feb  08:39",
                    imageUrl: "images/n2.png",
title:" New study shows the devastating impact of plastic pollution on marine life",
subtitle: "Scientists call for urgent action to reduce plastic waste and protect our oceans",

                  ), NewsCard(
                     time: "27 feb  09:19",
                    imageUrl: "images/n3.png",
title:" Australia experiences worst wildfires in decades",
subtitle: "Climate change and deforestation are contributing to the increasing frequency and severity of wildfires around the world",

                  ), NewsCard(
                     time: "27 feb  11:22",
                    imageUrl: "images/red.png",
                    title: "Major cities around the world implement green infrastructure to combat climate change",
                    subtitle: "Cities are investing in sustainable infrastructure to reduce carbon emissions and create more livable urban environments",
                  )],
    ));
  }
}
