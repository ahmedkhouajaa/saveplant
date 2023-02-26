
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planet/profile/components/profile_pic.dart';
import 'package:timer_count_down/timer_count_down.dart';


import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
   
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
          Container(
            
            child: SizedBox(
            height: 115,
            width: 115,
            child: Stack(
              fit: StackFit.expand,
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/ahmedkhouaja.png"),
                ),
                Positioned(
                  right: -16,
                  bottom: 0,
                  child: SizedBox(
                    height: 46,
                    width: 46,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(color: Colors.white),
                        ),
                        primary: Colors.white,
                        backgroundColor: Color(0xFFF5F6F9),
                      ),
                      onPressed: () {},
                      child: Icon(Icons.add, color: Colors.green,),
                    ),
                  ),
                )
              ],
            ),
              ),
          ),
          SizedBox(height: 30,),
          Container(
            
          
          child: Text("Ahmed khouaja",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),),
         SizedBox(height: 30,),
          Container(
           
          
          child: Text("Points : 45 Points",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),),

         Container(
          padding: EdgeInsets.only(left: 20,top: 50),
           child: Row(
            
             children: [
              
                Container(
           
          
          child: Text("Next Truck In : ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, ),),),

               Container(
                
                
                child:   Countdown(
                    
                    // controller: _controller,
                    
                    seconds: 200,
                    build: (_, double time) => Text(
                      time.toString(),
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.green
                      ),
                    ),
                    interval: Duration(  seconds:1 ),
                    onFinished: () {
                      
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Truck in your city Now !!',style: TextStyle(color: Colors.green),),
                        ),
                      );
         
                      // Navigator.push(
                        //        context,
                          //      MaterialPageRoute(
                            //        builder: (context) => Firstscreen()));
                      
                    },
                  ), ),
                  Text("Second")
             ],
           ),
         )
          
        ],
      ),
     
    );
  }
}
