import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  final List<Map<String, String>> projects = const [
    {
      'name': 'Halal Restaurant Finder',
      'description':
          'A Flutter app to locate Halal food spots with maps and filters',
    },
    {
      'name': 'Daily Yoga App',
      'description':
          'Fitness & meditation app with videos + structured workout plans',
    },
    {
      'name': 'Matrimony App',
      'description': 'Full wedding/matchmaking app with filtering & profiles',
    },
    {
      'name': 'News App',
      'description': 'Real-time news app with clean UI and categories',
    },
    {
      'name': 'VPN App',
      'description': 'Secure VPN app with subscription model',
    },
    {
      'name': 'Job Finder App',
      'description': 'Govt job listings + notifications',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // App Bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('My Projects'),
      ),

      // Body
      body: ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Card(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Theme.of(
                    context,
                  ).colorScheme.primaryContainer,
                  child: Icon(
                    Icons.phone_android,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                title: Text(
                  projects[index]['name']!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(projects[index]['description']!),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          );
          // return FadeIn(
          //   delay: index * 0.1,
          //   child:
          // );
        },
      ),
    );
  }
}
