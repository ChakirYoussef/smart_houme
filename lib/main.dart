import 'package:flutter/material.dart';
import 'package:smart_houme/LivingRoom.dart';
import 'package:smart_houme/myDrawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF1D2B53)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Rooms",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )),
          TextButton(
              onPressed: () {},
              child: Text("Devices",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold))),
          SizedBox(
            width: 200,
          ),
        ],
        //leading: IconButton(onPressed: () {  }, icon: Icon(Icons.menu),),
      ),
      drawer: MyDrawer(),
      body: GridView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/kitechn.png"), fit: BoxFit.cover),
            ),
            child: LivingRoom(),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
      ),
    );
  }

  getCard() {
    return Card(
      color: Color.fromRGBO(255, 255, 255, 0.4),
      elevation: 4,
      child: Column(
        children: [
          Text(
            "Kitchen",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Icon(Icons.window),
              SizedBox(width: 10,),
              Text("Window"),
              SizedBox(width: 10,),
              Switch(value: true, onChanged: (bool value) {  },
              activeColor: Colors.blue,
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.arrow_left),
              SizedBox(width: 10,),
              Text("Left"),
              SizedBox(width: 10,),
              Switch(value: false, onChanged: (bool value) {  },
                activeColor: Colors.blue,
              ),
            ],
          ),
          SizedBox(width: 5,),
          Row(
            children: [
              Icon(Icons.arrow_right),
              SizedBox(width: 10,),
              Text("Right"),
              Switch(value: false, onChanged: (bool value) { },
                activeColor: Colors.blue,
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Icon(Icons.window),
                  Text("Window")
                ],
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  Icon(Icons.door_sliding),
                  Text("Doors")
                ],
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  Icon(Icons.thermostat),
                  Text("thermostat")
                ],
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  Icon(Icons.light),
                  Text("Lights")
                ],
              ),
              SizedBox(width: 10,),

            ],
          )

        ],
      ),
    );
  }
}
