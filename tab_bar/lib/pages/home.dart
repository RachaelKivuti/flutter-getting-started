import 'package:flutter/material.dart';
import 'birthdays.dart';
import 'gratitude.dart';
import 'reminders.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

//tabController is initialized with a length of 3 (representing the number of tabs) and a
//vsync parameter set to this (indicating that the widget is a TickerProvider).
//An addListener is also attached to the TabController to listen for tab changes.
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_tabChanged);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

//callback function that is called whenever the tab is changed.
//prints a message indicating the index of the current tab.
  void _tabChanged() {
    // Check if Tab Controller index is changing, otherwise we get the notice twice
    if (_tabController.indexIsChanging) {
      print('tabChanged: ${_tabController.index}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tab Bar',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
//displays the content corresponding to the selected tab.
//It's controlled by _tabController
//and its children are instances of Birthdays, Gratitude and Reminders.
        child: TabBarView(controller: _tabController, children: const [
          Birthdays(),
          Gratitude(),
          Reminders(),
        ]),
      ),
      //contains a TabBar that displays tabs at the bottom of the screen.
      //It's also controlled by _tabController
      //and its tabs correspond to the same tabs as those in the TabBarView.
      bottomNavigationBar: SafeArea(
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.green,
          unselectedLabelColor: Colors.blue,
          tabs: const [
            Tab(
              icon: Icon(Icons.cake),
              text: 'Birthdays',
            ),
            Tab(
              icon: Icon(Icons.sentiment_satisfied),
              text: 'Gratitude', // Fix the duplicated 'Birthdays' text
            ),
            Tab(
              icon: Icon(Icons.access_alarm),
              text: 'Reminders', // Fix the duplicated 'Birthdays' text
            ),
          ],
        ),
      ),
    );
  }
}
