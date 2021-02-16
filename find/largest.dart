
import 'package:flutter/material.dart';
import 'package:largest_num_app/find/first.dart';
import 'package:largest_num_app/find/second.dart';
class FindApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        children: [
          SizedBox(height: 20,),
          Text("MENU", style: TextStyle(
              color: Colors.white,
              fontSize: 40
          ),),
          SizedBox(height: 50,),
          SizedBox(height: 50,width: double.infinity,
            child: RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FindLargest()));
              },
              child: Text("Find the Largest Number",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 20
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(height: 50,width: double.infinity,
            child: RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              ),
              onPressed: (){

                Navigator.push(context,MaterialPageRoute(builder: (context)=>FindSmallest()));
              },
              child: Text("Find the Smallest Number",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 20
                ),
              ),

            ),
          )
        ],
      ),
    );
  }
}
