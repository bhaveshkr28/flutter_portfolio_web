// Flutter widget for project cards with glassmorphism hover effects
import 'package:flutter/material.dart';

class ProjectCard extends StatefulWidget {
  final String title;
  final String description;

  ProjectCard({required this.title, required this.description});

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: Container(
        decoration: BoxDecoration(
          color: _hovering ? Colors.white.withOpacity(0.8) : Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: _hovering ? Colors.blue.withOpacity(0.5) : Colors.black.withOpacity(0.1),
              blurRadius: 15,
              spreadRadius: 5,
            ),
          ],
          border: Border.all(color: Colors.blueAccent.withOpacity(0.5), width: 1),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(widget.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(widget.description),
          ],
        ),
      ),
    );
  }
}