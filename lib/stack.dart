import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 300,
          height: 300,
          color: Colors.amberAccent,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blueAccent,
          ),
        ),
        Positioned(
          right: 16,
          top: 16,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.redAccent,
          ),
        )
      ],
    );
  }
}

class IndexedStackDemo extends StatelessWidget {
  const IndexedStackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: 2,
      children: [
        Container(
          width: 300,
          height: 300,
          color: Colors.amberAccent,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blueAccent,
          ),
        ),
        Positioned(
          right: 16,
          top: 16,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.redAccent,
          ),
        ),
      ],
    );
  }
}
