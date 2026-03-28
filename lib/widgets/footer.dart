import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 768;

    return Container(
      width: double.infinity,
      color: Colors.grey[900],
      padding: EdgeInsets.symmetric(
        vertical: 40,
        horizontal: isMobile ? 20 : 60,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'BK Portfolio',
                style: TextStyle(
                  fontSize: isMobile ? 18 : 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              if (!isMobile)
                Row(
                  children: [
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[400],
                      ),
                    ),
                    const SizedBox(width: 30),
                    Text(
                      'Terms of Service',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
            ],
          ),
          const SizedBox(height: 30),
          Divider(color: Colors.grey[700]),
          const SizedBox(height: 20),
          Text(
            '© 2024 Bhavesh Kumar. All rights reserved.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}