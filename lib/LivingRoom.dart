import 'package:flutter/material.dart';

class LivingRoom extends StatefulWidget {
  const LivingRoom({super.key});

  @override
  State<LivingRoom> createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
              child: Text(
            "Living Room",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
          Card(
            color: Colors.grey[100],
            elevation: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    SizedBox(width: 60,),
                    Column(
                      children: [
                        Icon(Icons.window),
                        Text("Windows",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    SizedBox(width: 5,),
                    Column(
                      children: [
                        Icon(Icons.door_sliding_outlined),
                        Text("Doors",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    SizedBox(width: 5,),
                    Column(
                      children: [
                        Icon(Icons.thermostat),
                        Text("Thermostat",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    SizedBox(width: 5,),
                    Column(
                      children: [
                        Icon(Icons.light),
                        Text("Lights",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
