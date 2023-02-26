import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:planet/donnation/donnationcard.dart';

class Donationscreen extends StatefulWidget {
  const Donationscreen({super.key});

  @override
  State<Donationscreen> createState() => _DonationscreenState();
}

class _DonationscreenState extends State<Donationscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          HomePageCard(),
          HomePageCard(percent: 0.4,donnateur:  "44 Donnateurs",imageUrl: "images/pol2.png"),
          HomePageCard( percent: 0.7,donnateur: "100 Donnateurs",imageUrl: "images/pol3.png"),
        ],
      ),
    );
  }
}