import 'dart:math';
import 'package:flutter/material.dart';

/*
    Welcome to the club buddy *spank*. If you open this code, you must know 
  you are awesome if you understand what here written (and if don't know too).
  Okay, let's go on two blocks down and see you there. 
*/
void main() {
  runApp(MyApp());
}

Random rnd = new Random(); // We inpur math libary for generate random numbers.
// and here creating variable for class Random.

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Random Colors',
        home: Scaffold(
          backgroundColor: Color.fromRGBO(randomColorNumbers(),
              randomColorNumbers(), randomColorNumbers(), 1),
          /* 
                  Meow(now) we see that strange functions, 
                they set random values ​​when you click on the screen, later we will look at them closely.
              */
          body: GestureDetector(
            behavior: HitTestBehavior
                .opaque, // Thanks to this line, we catch events across the entire screen.
            child: Center(
              child: Text('Hey there',
                  style: TextStyle(fontSize: 48, fontFamily: 'Jomhuria')),
            ),
            onTap: () => setState(randomColorNumbers),
            /*
                Using the arrow function, we call Set State, 
              thanks to which we update the values ​​of the randomColorNumbers function.
            */
          ),
        ));
  }

  int randomColorNumbers() => rnd.nextInt(255);
  /*
      And here is our function. 
    I had to shove it into a variable because that's the only way I could use it for my dirty purposes
  */

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  } // Well, in no case should you touch it, otherwise nothing will work
}

// Thank you for look at this and have a good day/night
