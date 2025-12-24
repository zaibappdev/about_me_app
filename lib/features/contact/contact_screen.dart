import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // App Bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Contact Me'),
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              // Text
              Text(
                'Let\'s build something amazing together!',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              // FadeIn(
              //   delay: 0.1,
              //   child:
              // ),
              const SizedBox(height: 40),

              // Email
              _buildContactCard(
                context,
                Icons.email,
                'Email',
                'zaib.appdev@gmail.com',
                'mailto:zaib.appdev@gmail.com',
              ),
              // FadeIn(
              //   delay: 0.2,
              //   child:
              // ),
              const SizedBox(height: 15),

              // Website
              _buildContactCard(
                context,
                Icons.language,
                'Website',
                'Visit Appo Matrix',
                'https://appomatrix.com',
              ),
              // FadeIn(
              //   delay: 0.3,
              //   child:
              // ),
              const SizedBox(height: 15),

              // WhatsApp
              _buildContactCard(
                context,
                Icons.chat,
                'WhatsApp',
                'Message me on WhatsApp',
                'https://wa.me/+923295615579',
              ),
              // FadeIn(
              //   delay: 0.4,
              //   child:
              // ),
              const SizedBox(height: 15),

              // LinkedIn
              _buildContactCard(
                context,
                Icons.business_center,
                'LinkedIn',
                'Connect on LinkedIn',
                'https://www.linkedin.com/in/zaibappdev/',
              ),
              // FadeIn(
              //   delay: 0.5,
              //   child:
              // ),
              const SizedBox(height: 15),

              // Upwork
              _buildContactCard(
                context,
                Icons.work,
                'Upwork',
                'Hire me on Upwork',
                'https://upwork.com',
              ),
              // FadeIn(
              //   delay: 0.6,
              //   child:
              // ),
              const SizedBox(height: 15),

              // Fiverr
              _buildContactCard(
                context,
                Icons.work,
                'Fiverr',
                'Hire me on Fiverr',
                'https://fiverr.com',
              ),
              // FadeIn(
              //   delay: 0.6,
              //   child:
              // ),
              const SizedBox(height: 30),

              // Button
              ElevatedButton.icon(
                onPressed: () {
                  // Handle hire me action
                },

                icon: const Icon(Icons.send),
                label: const Text('Hire Me / Contact Me'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                ),
              ),
              // FadeIn(
              //   delay: 0.7,
              //   child:
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactCard(
    BuildContext context,
    IconData icon,
    String title,
    String subtitle,
    String url,
  ) {
    return Card(
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          child: Icon(icon, color: Theme.of(context).colorScheme.primary),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: Icon(
          Icons.open_in_new,
          color: Theme.of(context).colorScheme.primary,
        ),
        onTap: () async {
          try {
            final Uri uri = Uri.parse(url);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
            }
          } catch (e) {
            if (context.mounted) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Could not open: $e')));
            }
          }
        },
      ),
    );
  }
}
