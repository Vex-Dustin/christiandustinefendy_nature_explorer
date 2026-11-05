import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Nature Explorer'),
        backgroundColor: Colors.green,),

      body: Column( children: [
        Center(child: Image.network("https://picsum.photos/id/10/200/300", width: 2000, height: 250, fit: BoxFit.cover,)),
        SizedBox(height: 10),
        Padding(padding: EdgeInsets.all(16),
          child: Column(

            spacing: 10,
            children: [
              Row(children: [
                Center(child: Text("A Peaceful Natural Escape", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))),
              ]),

              Column(crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                Text("Discover, Explore, Reconnect", textAlign: TextAlign.left , style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("Discover the beauty of nature through breathtaking landscapes, peaceful forests, and stunning mountain views, Explore remarkable destinations, enjoy the fresh air, and reconnect with the natural world.From quiet lakes to scenic trails, every journey offers a new experience. Let nature inspire your next adventure and create unforgettable memories along the way.", style: TextStyle(fontSize: 20),)
              ],),

            ],
          ),)
      ],),

    );
  }
}