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
                  color: Color.fromARGB(255, 190, 0, 0),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 8, 20, 8),
                      child: Row(
                        children: [
                          Icon(Icons.heart_broken_sharp,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Heart Rate',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 252, 252, 252)))
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 8, 30, 8),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              '78',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 38,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'bpm',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 0, 146, 7),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 8, 20, 8),
                      child: Row(
                        children: [
                          Icon(Icons.gas_meter,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Gas',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 252, 252, 252)))
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 8, 30, 8),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              '36',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 38,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'R',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 202, 131, 0),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 8, 20, 8),
                      child: Row(
                        children: [
                          Icon(Icons.foggy,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Humidity',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 252, 252, 252)))
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 8, 30, 8),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              '20',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 38,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '%',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 190, 0, 0),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 8, 20, 8),
                      child: Row(
                        children: [
                          Icon(Icons.air,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Air Pressure',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 252, 252, 252)))
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 8, 30, 8),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              '43',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 38,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'hpa',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 0, 146, 7),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 8, 0, 8),
                      child: Row(
                        children: [
                          Icon(Icons.stream,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Ambiant Temperature',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 252, 252, 252)))
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 30, 8),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              '45',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 38,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'c',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
