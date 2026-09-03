import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  const CustomCard({super.key, required this title, required this subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom:12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(subtitle, style: const TextStyle(color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

Stack(
  children: [
    Container(
      width: double.infinity,
      height: 200,
      color: Colors.blueAccent,
    ),
    Positioned(
      top: 40,
      right: 20,
      child: CircleAvatar(
        radius: 12,
        backgroundColor: Colors.red,
        child: Text(
          '3', 
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ), 
    ), 
  ], 
) 