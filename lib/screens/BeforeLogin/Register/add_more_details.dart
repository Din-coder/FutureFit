import 'package:flutter/material.dart';
import 'package:futurefit/screens/BeforeLogin/Register/widgets/general_data.dart';
import 'package:futurefit/screens/BeforeLogin/Register/widgets/health_data.dart';




import 'dart:async';

class myinheritedwidgetdata {
  
}




class AddDetailsScreen extends StatefulWidget {
  const AddDetailsScreen({super.key});

  @override
  State<AddDetailsScreen> createState() => _AddDetailsScreenState();
}

class _AddDetailsScreenState extends State<AddDetailsScreen> with SingleTickerProviderStateMixin {

  late TabController _tabController;
  final dataList = [];

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    PageOne(),
                    PageTwo()
                  ]
                ),
              ),
              TabBar(
                indicatorColor: const Color.fromARGB(0, 0, 0, 0),
                controller: _tabController,
                tabs: [
                  Tab(text: 'PREVIOUS',),
                  Tab(text: 'NEXT',),
                ]
              ),
            ],
          )
        )
      ),
    );
  }
}