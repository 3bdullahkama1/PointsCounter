import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Points Counter",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Text(
                        "$teamAPoints",
                        style: const TextStyle(
                          fontSize: 120,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(
                        flex: 4,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        child: const Text(
                          "Add 1 Point  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        },
                        child: const Text(
                          "Add 2 Points",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        },
                        child: const Text(
                          "Add 3 Points",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey[400],
                    thickness: 1,
                    indent: 50,
                    endIndent: 100,
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Text(
                        "$teamBPoints",
                        style: const TextStyle(
                          fontSize: 120,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(
                        flex: 4,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        child: const Text(
                          "Add 1 Point  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        },
                        child: const Text(
                          "Add 2 Points",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        },
                        child: const Text(
                          "Add 3 Points",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              minimumSize: const Size(120, 40),
            ),
            onPressed: () {
              setState(() {
                teamAPoints = 0;
                teamBPoints = 0;
              });
            },
            child: const Text(
              "Reset",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
