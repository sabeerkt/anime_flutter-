import 'package:flutter/material.dart';

class OpacityPage extends StatefulWidget {
  const OpacityPage({Key? key}) : super(key: key);

  @override
  _OpacityPageState createState() => _OpacityPageState();
}

class _OpacityPageState extends State<OpacityPage> {
  double opacityLevel = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AnimatedOpacity widget for fading in and out
            AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: opacityLevel,
              child: Text(
                "Opacity",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            // ElevatedButton to trigger opacity animation
            ElevatedButton(
              onPressed: () {
                // Toggle between 0 and 1 opacity
                setState(() {
                  opacityLevel = opacityLevel == 0 ? 1 : 0;
                });
              },
              child: Text("Toggle Opacity"),
            ),
          ],
        ),
      ),
    );
  }
}
