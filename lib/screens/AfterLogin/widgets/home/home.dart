import 'package:flutter/material.dart';
import 'package:futurefit/screens/AfterLogin/widgets/home/homeextended.dart';

class Home extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello,',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
          ),
          Text(
            'John',
            style: TextStyle(
              color: Color.fromARGB(255, 13, 177, 173),
              fontSize: 40,
              fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.circle,
                color: Color.fromARGB(110, 0, 255, 8),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Everything seems normal',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(153, 71, 71, 71),
                      ),
                    ),
                    Text(
                      'Keep it up',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(153, 71, 71, 71),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Today',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(195, 0, 0, 0),
                ),
              ),
              Icon(
                Icons.refresh,
                color: Color.fromARGB(139, 63, 63, 63),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          HomeExtended(),
        ],
      ),
    );
  }
}
