import 'package:flutter/material.dart';

class IconAnim extends StatefulWidget {
  const IconAnim({Key? key}) : super(key: key);

  @override
  _IconAnimState createState() => _IconAnimState();
}

class _IconAnimState extends State<IconAnim> with TickerProviderStateMixin {
  bool _isPlaying = false; // Renamed variable for better readability
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Animation'), // Added an app bar for better UI
      ),
      body: Center(
        child: GestureDetector(
          onTap: _toggleAnimation, // Extracted method for better readability
          child: AnimatedIcon(
            progress: _controller,
            size: 100,
            icon: AnimatedIcons.add_event,
          ),
        ),
      ),
    );
  }

  // Extracted method to handle the animation toggle
  void _toggleAnimation() {
    if (_isPlaying) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }
}
