import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // App Bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('My Skills'),
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Mobile Development
              _buildSkillCategory(context, 'Mobile Development', [
                'Android (Java, Kotlin)',
                'Flutter & FlutterFlow',
                'iOS (Swift basics)',
              ]),
              // FadeIn(
              //   delay: 0.1,
              //   child: ),
              // ),
              const SizedBox(height: 20),

              // Backend & APIs
              _buildSkillCategory(context, 'Backend & APIs', [
                'Firebase',
                'Supabase',
                'REST APIs',
                'Node.js Basics',
              ]),
              // FadeIn(
              //   delay: 0.2,
              //   child:
              // ),
              const SizedBox(height: 20),

              // UI/UX & Tools
              _buildSkillCategory(context, 'UI/UX & Tools', [
                'Figma',
                'Adobe XD',
                'Clean Architecture',
                'MVVM / Provider / Riverpod',
                'Git & Version Control',
              ]),
              // FadeIn(
              //   delay: 0.3,
              //   child:
              // ),
              const SizedBox(height: 20),

              // Additional Skills
              _buildSkillCategory(context, 'Additional Skills', [
                'App Monetization (Ads, In-App Purchase)',
                'Payment Gateway Integration',
                'Push Notifications',
                'Firebase Auth & Storage',
              ]),
              // FadeIn(
              //   delay: 0.4,
              //   child:
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillCategory(
    BuildContext context,
    String title,
    List<String> skills,
  ) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: skills.map((skill) {
                return Chip(
                  label: Text(skill),
                  backgroundColor: Theme.of(
                    context,
                  ).colorScheme.primaryContainer,
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
