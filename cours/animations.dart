import 'package:flutter/material.dart';

class Animation extends StatefulWidget {
  Widget child;
  int time;
  Animation({required this.child, required this.time}): super(key: key);

  @override
  _AnimationState createState() => _AnimationState();
}


/*SingleTickerProviderStateMixin is a class that allow to create animation
  with the AnimationController class. It like the metronome in music synchronise
  all the animations */
class AnimationsState extends State<Animations> with SingleTickerProviderStateMixin {
 late AnimationController _controller;
 late Animation<Offset> animationOffset;

 // initState allow to when you enter in the page, the animation start
 @override
    void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 1500),
        );
    }

// dispose allow to when you leave the page, the animation stop
@override
    void dispose() {
    _controller.dispose();
    super.dispose();
    }

@override
Widget build(BuildContext context){
    // Tween allow to create animation
    animationOffset = Tween<Offset>(
        begin: Offset(0.0, 1.0),
        end: Offset.zero,
    ).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutCubic,
    ));
    
    // Add listener to the animation
    _controller.addListener(() {
        setState(() {});
    });
    
    // Add the animation to the controller
    _controller.forward();
    
    return SlideTransition(
        position: animationOffset,
        child: widget.child,
    );
    }
    }
    