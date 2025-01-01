import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedPlatform = "Facebook";
  String selectedPostType = "Post";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 58, 55, 55),
        title: const Center(
          child: Text(
            "Social Media Performance Analysis",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 58, 55, 55),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Social media platform",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      DropdownButton<String>(
                        dropdownColor: const Color.fromARGB(255, 58, 55, 55),
                        value: selectedPlatform,
                        items: [
                          "Facebook",
                          "Instagram",
                          "X",
                          "Linkedin",
                        ].map((String platform) {
                          return DropdownMenuItem<String>(
                            value: platform,
                            child: Text(
                              platform,
                              style: const TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedPlatform = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Row(
                    children: [
                      const Text(
                        "Post type",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      DropdownButton<String>(
                        dropdownColor: const Color.fromARGB(255, 58, 55, 55),
                        value: selectedPostType,
                        items: [
                          "Post",
                          "Video",
                          "Link",
                        ].map((String postType) {
                          return DropdownMenuItem<String>(
                            value: postType,
                            child: Text(
                              postType,
                              style: const TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedPostType = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Analyse",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "GPT Insights",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 450,
              width: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
