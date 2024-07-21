import 'package:flutter/material.dart';

class Screen01 extends StatefulWidget {
  const Screen01({super.key});

  @override
  State<Screen01> createState() => _Screen01State();
}

class _Screen01State extends State<Screen01> {
  double myAngle = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Text(
          'Implicit\'s Animation',
          style: TextStyle(color: Colors.grey),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.brown.withOpacity(0.5),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            left: MediaQuery.of(context).size.width * 0.30,
            child: AnimatedRotation(
              curve: Curves.fastEaseInToSlowEaseOut,
              duration: const Duration(seconds: 2),
              turns: myAngle,
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.16,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  backgroundColor: Colors.brown.withOpacity(0.31),
                  radius: MediaQuery.of(context).size.width * 0.15,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        bottom: MediaQuery.of(context).size.width * -0.08,
                        left: (MediaQuery.of(context).size.width / 4) - 81,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: MediaQuery.of(context).size.width * 0.10,
                          child: CircleAvatar(
                            radius: MediaQuery.of(context).size.width * 0.09,
                            backgroundColor: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[800],
        onPressed: () => setState(() => myAngle -= 1),
        child: const Icon(
          Icons.rotate_right_outlined,
          color: Colors.black,
          size: 30.0,
        ),
      ),
    );
  }
}
