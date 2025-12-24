import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final void Function(int) onNavigate;

  const HomeScreen({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // App Bar
      appBar: AppBar(backgroundColor: Colors.white, title: const Text('Home')),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              // Profile Image
              Hero(
                tag: 'profile',
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Theme.of(
                    context,
                  ).colorScheme.primaryContainer,
                  backgroundImage: const AssetImage('assets/profile.jpg'),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Hi, I\'m Zaib Ullah',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              // FadeIn(
              //   delay: 0.2,
              //   child:
              // ),
              const SizedBox(height: 10),

              Text(
                'Employee Of Appo Matrix | Mobile App Developer',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
                textAlign: TextAlign.center,
              ),
              // FadeIn(
              //   delay: 0.3,
              //   child:
              // ),
              const SizedBox(height: 30),

              // Card
              Card(
                color: Colors.white70,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'From Code to Company: Building Solutions That Matter',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'My journey from writing my first Android app to founding Appo Matrix taught me something crucial: the most valuable innovations happen when deep technical expertise aligns with clear business objectives.',
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),

              // FadeIn(
              //   delay: 0.4,
              //   child:
              // ),
              const SizedBox(height: 30),

              // Action Buttons
              Wrap(
                spacing: 15,
                runSpacing: 15,
                alignment: WrapAlignment.center,
                children: [
                  _buildActionButton(
                    context,
                    icon: Icons.person,
                    label: 'About Me',
                    onTap: () => _navigateToIndex(context, 1),
                  ),
                  _buildActionButton(
                    context,
                    icon: Icons.code,
                    label: 'My Skills',
                    onTap: () => _navigateToIndex(context, 2),
                  ),
                  _buildActionButton(
                    context,
                    icon: Icons.work,
                    label: 'My Projects',
                    onTap: () => _navigateToIndex(context, 3),
                  ),
                  _buildActionButton(
                    context,
                    icon: Icons.contact_mail,
                    label: 'Contact Me',
                    onTap: () => _navigateToIndex(context, 4),
                  ),
                ],
              ),
              // FadeIn(
              //   delay: 0.5,
              //   child:
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 140,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Icon(icon, size: 32, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToIndex(BuildContext context, int index) {
    onNavigate(index);
  }
}
