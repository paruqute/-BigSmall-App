import 'package:flutter/material.dart';
import 'package:largest_num_app/main.dart';

class FindLargest extends StatefulWidget {
  @override
  _FindLargestState createState() => _FindLargestState();
}

class _FindLargestState extends State<FindLargest> {

  TextEditingController fnum=TextEditingController();
  TextEditingController snum=TextEditingController();
   int _big=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Find the largest number",
          style: TextStyle(
            color: Colors.white
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
                  labelText: "First digit",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),

              ),
              SizedBox(height: 20,),
              TextField(
                controller: snum,
                decoration: InputDecoration(
                  labelText: "Second digit",
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
                  var getSecondDigt=int.parse(snum.text);

                  print(getFirstDgit);
                  print(getSecondDigt);


                  setState(() {
                    _big= ((getFirstDgit>getSecondDigt)? getFirstDgit:getSecondDigt);
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
              SizedBox(height: 30,),
              Text("Largest Number is",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 30
              ),
              ),
              Text(_big.toString(), style: TextStyle(
                color: Colors.purple,
                fontSize: 30
              ),) ,
              SizedBox(height: 20,),
              SizedBox(height: 50,width: double.infinity,
              child: RaisedButton(
                color: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Find()));
                },
              child: Text("Goto Menu",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
              ),
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
