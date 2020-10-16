import 'package:flutter/material.dart';
import 'package:characters/characters.dart';
import 'package:my_app/presentation/my_flutter_app_icons.dart';
 
void main() => runApp(MaterialApp(
  home: IrohApp(),
));
 
class IrohApp extends StatefulWidget {
  @override
  _IrohAppState createState() => _IrohAppState();
}
 
class _IrohAppState extends State<IrohApp> {
 
  // List of quotes by Iroh.
  List<String> quotes = [
    '“It is important to draw wisdom from many different places. If we take it from only one place, it becomes rigid and stale.”',
    '“Destiny is a funny thing. You never know how things are going to work out. But if you keep an open mind and an open heart, I promise you will find your own destiny someday.”',
    '“There is nothing wrong with a life of peace and prosperity. I suggest you think about what it is that you want from your life, and why.”',
    '“Perfection and power are overrated. I think you are very wise to choose happiness and love.”',
    '“Sometimes life is like this dark tunnel. You can’t always see the light at the end of the tunnel, but if you just keep moving, you will come to a better place.”',
    '“Life happens wherever you are, whether you make it or not.”',
    '“Pride is not the opposite of shame, but its source. True humility is the only antidote to shame.”',
    '“You sound like my nephew, always thinking that you need to do things on your own without anyone’s support.\n There is nothing wrong with letting people who love you help you.”',
    '“You must never give in to despair. Allow yourself to slip down that road and you surrender to your lowest instincts. In the darkest times, hope is something you give yourself. That is the meaning of inner strength.”',
    '“It is time for you to look inward, and start asking yourself the big questions. Who are you? And what do you want?”',
  ]; 
 
  // Blank string in place for new quote.
  String newQuote = '';
 
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
 
      // App bar
      appBar: AppBar(
        title: Text(
          'Iroh App',
          style: TextStyle(
            fontFamily: 'Avatar',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
 
      // Main body
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/appa.png"), 
            fit: BoxFit.cover,
          ),
        ),
 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          // Quote Iroh button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red[700],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), //changes position of shadow.
                      ),
                    ],
                  ),
                  child: RaisedButton.icon(
                    onPressed: () {
                      setState(() {
                        quotes.shuffle();
                        newQuote = quotes[0];
                      });
                    },
                    color: Colors.red[700],
                    icon: Icon(Icons.menu),
                    label: Text(
                      'Quote Iroh',
                      style: TextStyle(
                        fontFamily: 'Avatar',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
 
            // Quote box
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(50.0),
                    decoration: BoxDecoration(
                      color: Colors.red[700],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), //changes position of shadow.
                        ),
                      ],  
                    ),
 
                  child: Text(
                    '$newQuote',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Avatar',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.5,
                    ),
                  ),
                  ),
                ),
              ]
            ),
          ],
        ),
      ),
    );
  return scaffold;
  }
}
