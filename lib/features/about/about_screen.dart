import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // App Bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('About Me'),
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Card
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Professional Background',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'I\'m a Senior Mobile App Developer with expertise in Android, Flutter, and full-stack mobile development. Over the years, I\'ve delivered 50+ apps for startups, businesses, and entrepreneurs worldwide.',
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'I started Appo Matrix to help people bring their ideas to life through clean UI/UX and scalable mobile apps. I focus on quality, speed, and innovation in every project.',
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
              // FadeIn(
              //   delay: 0.1,
              //   child:
              // ),
              const SizedBox(height: 20),

              // Card
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What Sets Us Apart',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      _buildBulletPoint(
                        context,
                        'Technical precision: Building scalable, performant systems that grow with your business',
                      ),
                      _buildBulletPoint(
                        context,
                        'Business acumen: Translating complex technical concepts into tangible business value',
                      ),
                      _buildBulletPoint(
                        context,
                        'Industry insight: Tailoring solutions to the unique challenges of finance, healthcare, retail, and logistics',
                      ),
                    ],
                  ),
                ),
              ),
              // FadeIn(
              //   delay: 0.2,
              //   child:
              // ),
              const SizedBox(height: 20),

              // Card
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Key Information',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      _buildInfoRow(
                        context,
                        Icons.location_on,
                        'Based in: Pakistan',
                      ),
                      _buildInfoRow(
                        context,
                        Icons.trending_up,
                        'Experience: 2+ Years',
                      ),
                      _buildInfoRow(
                        context,
                        Icons.business,
                        'Employee of Appo Matrix',
                      ),
                      _buildInfoRow(
                        context,
                        Icons.public,
                        'Worked with USA, UK, UAE & European Clients',
                      ),
                      _buildInfoRow(
                        context,
                        Icons.rocket_launch,
                        'Objective: Create impactful digital products',
                      ),
                    ],
                  ),
                ),
              ),
              // FadeIn(
              //   delay: 0.3,
              //   child:
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '→ ',
            style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(text, style: Theme.of(context).textTheme.bodyLarge),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(icon, color: Theme.of(context).colorScheme.primary),
          const SizedBox(width: 12),
          Expanded(
            child: Text(text, style: Theme.of(context).textTheme.bodyLarge),
          ),
        ],
      ),
    );
  }
}
