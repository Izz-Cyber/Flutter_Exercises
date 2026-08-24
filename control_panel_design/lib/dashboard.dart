import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("لوحة التحكم"), centerTitle: true),

      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                Container(color: Colors.red, child: Icon(Icons.shopping_cart)),
                Container(color: Colors.blue, child: Icon(Icons.people)),
                Container(
                  color: Colors.yellow,
                  child: Icon(Icons.production_quantity_limits),
                ),
                Container(color: Colors.green, child: Icon(Icons.settings)),
              ],
            ),
          ),

          Expanded(
            flex: 2,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(color: Colors.grey);
              },
              itemCount: 20,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(child: Icon(Icons.shopping_bag)),
                    title: Text("طلب رقم $index"),
                    subtitle: Text("تمت العملية بنجاح"),
                    trailing: Icon(Icons.arrow_back_ios),
                    onTap: () {
                      print("فتح الطلب رقم $index");
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
