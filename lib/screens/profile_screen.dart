import 'package:flutter/material.dart';

import '../data/profile_data.dart';
import '../widgets/profile_card.dart';
import '../widgets/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Personal Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF303A31),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFF3F1E9),
        elevation: 0,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 680),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),

                const ProfileHeader(),

                const SizedBox(height: 25),

                ProfileCard(
                  title: 'About Me',
                  content: Text(
                    ProfileData.aboutMe,
                    style: const TextStyle(
                      fontSize: 13,
                      height: 1.6,
                      color: Color(0xFF64748B),
                    ),
                  ),
                ),

                ProfileCard(
                  title: 'My Interests',
                  content: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: ProfileData.interests.map((interest) {
                      return Chip(
                        label: Text(interest),
                        backgroundColor: const Color(0xFFE8E8DC),
                        side: BorderSide.none,
                        labelStyle: const TextStyle(
                          color: Color(0xFF303A31),
                          fontSize: 11,
                        ),
                      );
                    }).toList(),
                  ),
                ),

                ProfileCard(
                  title: 'Tools I Use',
                  content: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: ProfileData.tools.map((tool) {
                      return Chip(
                        avatar: const Icon(
                          Icons.code,
                          size: 16,
                          color: Color(0xFF527DA8),
                        ),
                        label: Text(tool),
                        backgroundColor: const Color(0xFFE8E8DC),
                        side: BorderSide.none,
                        labelStyle: const TextStyle(
                          fontSize: 11,
                          color: Color(0xFF303A31),
                        ),
                      );
                    }).toList(),
                  ),
                ),

                ProfileCard(
                  title: 'Currently Learning',
                  content: Column(
                    children: ProfileData.currentlyLearning.map((item) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.check_circle_outline,
                              color: Color(0xFF788064),
                              size: 19,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF77796F),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFF303A31),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.lightbulb_outline,
                        color: Colors.white,
                        size: 28,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'A Thought to Keep',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        ProfileData.motto,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
