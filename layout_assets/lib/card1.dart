import 'package:flutter/material.dart';

class card1 extends StatelessWidget {
  const card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الملف الشخصي"),
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 400,
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0,5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Image.asset("assets/images/card1.jpg", width: 150, height: 150,),
                  Text("عزالدين الموشكي", style: TextStyle(fontFamily: 'assets/fonts/CascadiaCode-Regular.ttf', fontSize: 24),),

                  SizedBox(height: 20,),
                  
                  Row(children: [
                    Expanded(
                      child: Icon(Icons.phone)
                    ),
                    Expanded(
                      child: Icon(Icons.message)
                    ),
                    Expanded(
                      child: Icon(Icons.share)
                    ),
                  ],),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
