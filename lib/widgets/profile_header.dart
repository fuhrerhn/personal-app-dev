import 'package:flutter/material.dart';

import '../data/profile_data.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 58,
          backgroundColor: const Color(0xFFE8E8DC),
          child: ClipOval(
            child: Image.asset(
              'assets/images/profile.jpg',
              width: 116,
              height: 116,
              fit: BoxFit.cover,

              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.person,
                  size: 65,
                  color: Color(0xFF788064),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 16),

        Text(
          ProfileData.name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Color(0xFF23344B),
          ),
        ),
        const SizedBox(height: 6),

        Text(
          ProfileData.studyProgram,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF77796F),
          ),
        ),
        const SizedBox(height: 4),

        Text(
          ProfileData.university,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFF77796F),
          ),
        ),
        const SizedBox(height: 12),

        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFFBFAF6),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            'NRP: ${ProfileData.studentId}',
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Color(0xFF303A31),
            ),
          ),
        ),
      ],
    );
  }
}
