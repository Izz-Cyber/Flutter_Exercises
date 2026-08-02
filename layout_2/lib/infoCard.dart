import 'package:flutter/material.dart';

class infoCard extends StatelessWidget {
  const infoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Info Card"),
        centerTitle: true,
        backgroundColor: Colors.amber,

      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius:80),
              SizedBox(height: 20,),
              Card(
                elevation: 10,
                child: ListTile(
                  leading: CircleAvatar(radius: 50,),
                  title: Text("Ali Ahmed"),
                  subtitle: Text("software"),
                  trailing: Icon(Icons.arrow_back_rounded),
        
                ),
              ),
        
              Card(
                elevation: 10,
                child: ListTile(
                  leading: CircleAvatar(radius: 50,),
                  title: Text("Ahmed Ali Naser"),
                  subtitle: Text("Developer"),
                  trailing: Icon(Icons.arrow_back_rounded),
                  
                ),
                
        
              ),

              Card(
                elevation: 10,
                child: ListTile(
                  leading: CircleAvatar(radius: 50,),
                  title: Text("Ahmed Ali Naser"),
                  subtitle: Text("Developer"),
                  trailing: Icon(Icons.arrow_back_rounded),
                  
                ),
                
        
              ),



            ],
          )
        ),
      )
    );
  }
}
