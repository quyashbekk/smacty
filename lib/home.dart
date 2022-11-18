import 'package:flutter/material.dart';
import 'package:smacty/report.dart';
import 'package:smacty/food.dart';
import 'package:smacty/healthcare.dart';
import 'package:smacty/news.dart';
import 'package:smacty/services.dart';
import 'package:smacty/transport.dart';
import 'package:smacty/utilities.dart';
import 'package:smacty/widgets/ucard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(100, 100, 100, 150),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
      body: Column(
        children: [
          Container(
            //APPBAR
            width: double.infinity,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/tashkent.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Center(
                child: Text(
                  'Tashkent',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Row(
            //NEWS
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const News(),
                      ),
                    );
                  },
                  child: const SectionCard(
                    text: 'News',
                    path: 'images/news.jpg',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                //TRANSPORT
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Transport(),
                      ),
                    );
                  },
                  child: const SectionCard(
                    path: 'images/transport.jpg',
                    text: 'Transport',
                  ),
                ),
              ),
              Expanded(
                //UTILITIES
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Utilities(),
                      ),
                    );
                  },
                  child: const SectionCard(
                    path: 'images/utilities.jpg',
                    text: 'Utilities',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                //FOOD
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Food(),
                      ),
                    );
                  },
                  child: const SectionCard(
                    text: 'Food',
                    path: 'images/food.jpg',
                  ),
                ),
              ),
              Expanded(
                //SERVICES
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Services(),
                      ),
                    );
                  },
                  child: const SectionCard(
                    text: 'Services',
                    path: 'images/services.jpg',
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                //EMERGENCY
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Report(),
                      ),
                    );
                  },
                  child: const SectionCard(
                    text: 'Report',
                    path: 'images/report.jpg',
                  ),
                ),
              ),
              Expanded(
                //HEALTHCARE
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Healthcare(),
                      ),
                    );
                  },
                  child: const SectionCard(
                    text: 'Healthcare',
                    path: 'images/healthcare.jpg',
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
