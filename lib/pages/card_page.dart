import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'Card page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Text(
                  '666Ullamco ut ut non incididunt. Do aliqua ea eu ipsum labore duis esse id ut adipisicing exercitation anim commodo laboris. Pariatur velit voluptate ad consequat cillum nulla excepteur sit occaecat cillum laboris adipisicing laboris. Voluptate laboris elit non dolor proident eiusmod. Nostrud ullamco deserunt minim est magna dolor anim eiusmod adipisicing ex dolor incididunt irure. Reprehenderit tempor in occaecat fugiat ea voluptate eu incididunt et ipsum.',
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  child: Text(
                    'Follow me',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.07),
                  offset: Offset(4, 4),
                  blurRadius: 12,
                ),
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 6,
                  offset: Offset(-5, -5),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(8, 8),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/image01.png',
                  height: 120,
                ),
                SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fugiat enim ullamco sunt culpa.',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Elit sit ut aliqua sunt do proident. Nulla exercitation elit anim commodo incididunt deserunt aute enim dolor nulla id. Fugiat nulla aliqua deserunt velit. Quis qui duis aliquip quis eu voluptate voluptate pariatur consectetur cillum veniam. Laborum quis esse eiusmod laborum duis ad proident ad commodo pariatur laboris. Eu incididunt ut elit occaecat ut nostrud minim.',
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
