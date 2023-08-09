import 'package:flutter/material.dart';

class HomeExtended extends StatelessWidget {
  const HomeExtended({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        thickness: 0,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(50, 150, 0, 0),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.heart_broken_sharp,
                          color: Color.fromARGB(150, 0, 0, 0)),
                      Text('Heart Rate',
                          style: TextStyle(
                              color: Color.fromARGB(150, 0, 0, 0),
                              fontWeight: FontWeight.w500
                          )),
                      Row(
                        children: [
                          Text(
                            '78',
                            style: TextStyle(
                                color: Color.fromARGB(150, 0, 0, 0),
                                fontSize: 38,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            ' bpm',
                            style: TextStyle(
                                color: Color.fromARGB(150, 0, 0, 0)),
                          ),
                        ],
                      ),
                      
                    ],
                  ),
                ),
              ),


              const SizedBox(height: 10,),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(50, 0, 150, 7),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.gas_meter,
                          color: Color.fromARGB(150, 0, 0, 0)),
                      
                      Text('Blood Oxygen',
                          style: TextStyle(
                              color: Color.fromARGB(150, 0, 0, 0),
                              fontWeight: FontWeight.w500
                          )),
                      Row(
                        children: [
                          Text(
                            '36',
                            style: TextStyle(
                                color: Color.fromARGB(150, 0, 0, 0),
                                fontSize: 38,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            ' R',
                            style: TextStyle(
                                color: Color.fromARGB(150, 0, 0, 0)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),

              
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(50, 100, 50, 0),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.foggy,
                          color: Color.fromARGB(150, 0, 0, 0)),
                      
                      Text('Skin Temperature',
                          style: TextStyle(
                              color: Color.fromARGB(150, 0, 0, 0),
                              fontWeight: FontWeight.w500
                          )),
                      Row(
                        children: [
                          Text(
                            '20',
                            style: TextStyle(
                                color: Color.fromARGB(150, 0, 0, 0),
                                fontSize: 38,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            ' %',
                            style: TextStyle(
                                color: Color.fromARGB(150, 0, 0, 0)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(50, 150, 0, 0),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.air,
                          color: Color.fromARGB(150, 0, 0, 0)),
                      
                      Text('Motion & Rotation',
                          style: TextStyle(
                              color: Color.fromARGB(150, 0, 0, 0),
                              fontWeight: FontWeight.w500
                          )),
                      Row(
                        children: [
                          Text(
                            '43',
                            style: TextStyle(
                                color: Color.fromARGB(150, 0, 0, 0),
                                fontSize: 38,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            ' hpa',
                            style: TextStyle(
                                color: Color.fromARGB(150, 0, 0, 0)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(50, 0, 150, 0),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.stream,
                          color: Color.fromARGB(150, 0, 0, 0)),
                
                      Text('Environmental Data',
                          style: TextStyle(
                              color: Color.fromARGB(150, 0, 0, 0),
                              fontWeight: FontWeight.w500
                          )),
                      Row(
                        children: [
                          Text(
                            '45',
                            style: TextStyle(
                                color: Color.fromARGB(150, 0, 0, 0),
                                fontSize: 38,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'c',
                            style: TextStyle(
                                color: Color.fromARGB(150, 0, 0, 0)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
