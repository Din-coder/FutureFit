import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> with AutomaticKeepAliveClientMixin {
  final _heightController = TextEditingController();

  final _weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('assets/images/moreData.jpg'),
            height: 150,
            width: 150,
          ),
          const SizedBox(height: 20,),
          const Text(
            "Almost there",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 0, 0, 0)
            ),
          ),
          const SizedBox(height: 20,),
          TextFormField(
            controller: _heightController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              hintText: 'Height',
            ),
          ),
          const SizedBox(height: 10,),
          TextFormField(
            controller: _weightController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              hintText: 'Weight',
            ),
          ),
          const SizedBox(height: 30,),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 13, 177, 173),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // Set the border radius here
              ), 
              minimumSize: const Size(double.infinity, 50)
            ), 
            child: const Text('START'),
          ),
        ],
      ),
    );
  }
  
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}