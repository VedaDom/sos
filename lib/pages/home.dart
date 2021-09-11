import 'package:flutter/material.dart';
import 'package:sos/widgets/growing_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          Center(
            child: GrowingButton(
              color: const Color(0xfff7d618),
            ),
          ),
          Positioned(
            top: 32,
            left: 32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://res.cloudinary.com/dlwzb2uh3/image/upload/v1608199177/veda_incks5.png",
                          ),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    const SizedBox(width: 32),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Nsengimana Veda Dominique",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "+243 999 079 506",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Nyarugenge",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8),
                    // Container(
                    //   margin: const EdgeInsets.symmetric(horizontal: 8),
                    //   width: 5,
                    //   height: 3,
                    //   color: const Color(0xfff7d618),
                    // ),
                    Text(
                      "Kanyinya",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8),
                    // Container(
                    //   margin: const EdgeInsets.symmetric(horizontal: 8),
                    //   width: 5,
                    //   height: 3,
                    //   color: const Color(0xfff7d618),
                    // ),
                    Text(
                      "Nyamweru",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8),
                    // Container(
                    //   margin: const EdgeInsets.symmetric(horizontal: 8),
                    //   width: 5,
                    //   height: 3,
                    //   color: const Color(0xfff7d618),
                    // ),
                    Text(
                      "Mubuga",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "KN 4",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
