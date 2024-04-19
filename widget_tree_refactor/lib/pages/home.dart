import 'package:flutter/material.dart';

//stateful widget
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

//state class of the stateful widget
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //toolbar at top of screen
        title: const Text('Widget Tree'),
        backgroundColor: const Color.fromARGB(255, 3, 80, 99),
      ),
      body: SafeArea(
        //ensure widget is positioned within safe area of screen
        child: SingleChildScrollView(
          //vertical/horizontal scrolling ability to a single child widget
          child: Padding(
            //empty spacing left, right, top, bottom
            padding: const EdgeInsets.all(
                20.0), // add spacing all round the whole screen area
            child: Column(
              //display vertical list of child widgets
              children: <Widget>[
                Row(
                  //display horizontal list of child widgets
                  children: <Widget>[
                    //create visual elements within the user interface. specify properties
                    Container(
                      color: Colors.brown,
                      height: 40.0,
                      width: 40.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                    ),
                    //expands its child widget to fill the available space within its parent widget's layout.
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        height: 40.0,
                        width: 40.0,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                    ),
                    Container(
                      color: Colors.brown,
                      height: 40.0,
                      width: 40.0,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                Row(
                  children: <Widget>[
                    Column(
                      // align at start, end, center, stretch across the cross axis depending. Here it aligns at start
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //can either be min or max
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        //placeholder to represent any type of widget
                        Container(
                          color: Colors.blueGrey,
                          height: 60.0,
                          width: 60.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                        ),
                        Container(
                          color: Colors.lightGreen,
                          height: 40.0,
                          width: 40.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                        ),
                        Container(
                          color: Colors.teal,
                          height: 20.0,
                          width: 20.0,
                        ),
                        const Divider(), //draws horizontal line with padding above and below
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 100.0,
                              //put widgets on top of each other
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: 100.0,
                                    width: 100.0,
                                    color: Colors.yellow,
                                  ),
                                  Container(
                                    height: 60.0,
                                    width: 60.0,
                                    color: Colors.amber,
                                  ),
                                  Container(
                                    height: 40.0,
                                    width: 40.0,
                                    color: Colors.brown,
                                  ),
                                ],
                              ),
                            ), //rounded design
                          ],
                        ),
                        const Divider(), //draws horizontal line with padding above and below
                        const Text(
                          'End of the Line',
                          style: TextStyle(
                            fontFamily: 'Roboto', // Change to the font family
                            fontSize: 18, // Changing the font size
                            color: Color.fromARGB(
                                255, 51, 25, 99), // changing font color
                            fontWeight:
                                FontWeight.bold, // Chaning the font weight
                            fontStyle:
                                FontStyle.normal, // Changing the font style
                            letterSpacing: 1.0, //  adjusting letter spacing
                            wordSpacing: 2.0, // adjusting word spacing
                            height: 1.5, //  adjusting line height
                          ),
                        ), //display label or screen. (single line)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
