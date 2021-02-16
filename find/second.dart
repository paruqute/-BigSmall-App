

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:largest_num_app/main.dart';
class FindSmallest extends StatefulWidget {
  @override
  _FindSmallestState createState() => _FindSmallestState();
}

class _FindSmallestState extends State<FindSmallest> {
  TextEditingController fnum=TextEditingController();
  TextEditingController snum=TextEditingController();
  int _small=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Find the smallest number",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30
          ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextField(
                controller: fnum,
                decoration: InputDecoration(
                  labelText: "First Digit",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: snum,
                decoration: InputDecoration(
                  labelText: "Second Digit",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(height: 50,width: double.infinity,
              child: RaisedButton(
                color: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                onPressed: (){
                  var getFirstDgit=int.parse(fnum.text);
                  var getSecondDigit=int.parse(snum.text);

                  print(getFirstDgit);
                  print(getSecondDigit);
                  print(_small);

                  setState(() {
                    _small= (getFirstDgit<getSecondDigit)? getFirstDgit:getSecondDigit;
                  });
                },
              child: Text("Find",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
              ),
              ),
              ),
              SizedBox(height: 20,),
              SizedBox(height: 50,width: double.infinity,
              child: RaisedButton(
                color: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),

                onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Find()));
                },
              child: Text("Goto Menu",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
              ),
              ),
              ),
              SizedBox(height: 20,),
              Text("Smallest Number is",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 30
              ),
              ),
              Text(_small.toString(),style: TextStyle(
                color: Colors.purple,fontSize: 30
              ),)

            ],
          ),
        ),
      ),
    );
  }
}
