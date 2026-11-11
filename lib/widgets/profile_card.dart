import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String title;
  final Widget content;

  const ProfileCard({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFBFAF6),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF303A31),
              ),
            ),
            const SizedBox(height: 12),

            content,
          ],
        ),
      ),
    );
  }
}
