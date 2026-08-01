import 'package:flutter/material.dart';

class BirthdayScreen extends StatelessWidget {
  const BirthdayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.menu),
        title: const Text(
          "Layouts",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.cloud_outlined),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "images/birthday.jpg",
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 15),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "My Birthday",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 8),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "It's going to be a great birthday. We are going out for dinner at my favorite place, then watch a movie after we go to the gelateria for ice cream and espresso.",
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ),

            const SizedBox(height: 15),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Icon(Icons.wb_sunny, color: Colors.orange, size: 18),
                  SizedBox(width: 8),
                  Text(
                    "81° Clear",
                    style: TextStyle(fontSize: 12, color: Colors.orange),
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left: 45),
              child: Text(
                "4500 San Alpho Drive Dallas, TX United States",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 15),

            /*Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  ElevatedButton(
                    onPressed: () => {},
                    child: const Text("Gift 1"),
                  ),

                  ElevatedButton(
                    onPressed: () => {},
                    child: const Text("Gift 2"),
                  ),

                  ElevatedButton(
                    onPressed: () => {},
                    child: const Text("Gift 3"),
                  ),

                  ElevatedButton(
                    onPressed: () => {},
                    child: const Text("Gift 4"),
                  ),

                  ElevatedButton(
                    onPressed: () => {},
                    child: const Text("Gift 5"),
                  ),

                  ElevatedButton(
                    onPressed: () => {},
                    child: const Text("Gift 6"),
                  ),

                  ElevatedButton(
                    onPressed: () => {},
                    child: const Text("Gift 7"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "images/brithday1.jpg",
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "images/brithday.jpg",
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "images/brithday.jpg",
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),*/
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Wrap(
                spacing: 7,
                runSpacing: 10,
                children: List.generate(7, (index) {
                  return Container(
                    width: 95,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(5),
                    ),

                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.card_giftcard,
                          color: Colors.blue,
                          size: 15,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Gift ${index + 1}",
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),

            const SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage("images/birthday1.jpg"),
                  ),

                  const SizedBox(width: 12),

                  const CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage("images/birthday2.jpg"),
                  ),

                  const SizedBox(width: 12),

                  const CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage("images/birthday3.jpg"),
                  ),

                  const Spacer(),

                  Column(
                    children: const [
                      Icon(Icons.cake, color: Colors.grey, size: 17),
                      SizedBox(height: 2),
                      Icon(Icons.star_border, color: Colors.grey, size: 17),
                      SizedBox(height: 2),
                      Icon(Icons.music_note, color: Colors.grey, size: 17),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
