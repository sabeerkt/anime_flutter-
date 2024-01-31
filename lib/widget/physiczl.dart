import 'package:flutter/material.dart';

class Physical extends StatefulWidget {
  const Physical({Key? key}) : super(key: key);

  @override
  State<Physical> createState() => _PhysicalState();
}

class _PhysicalState extends State<Physical> {
  bool _isElevated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Physical Model Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedPhysicalModel(
              child: SizedBox(
                height: 120,
                width: 120,
                child: Icon(Icons.abc),
              ),
              shape: BoxShape.rectangle,
              elevation: _isElevated ? 6 : 0,
              color: Colors.yellow,
              shadowColor: Colors.black,
              duration: Duration(milliseconds: 500),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isElevated = !_isElevated;
                });
              },
              child: Text(_isElevated ? 'Lower' : 'Elevate'),
            ),
          ],
        ),
      ),
    );
  }
}
