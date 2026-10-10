
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 500),
              padding: const EdgeInsets.all(12),

              child: Column(
                children: [
                  // Profile Section
                  Card(
                    color: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(16),

                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 58,
                            backgroundColor: Colors.grey.shade300,
                            backgroundImage: const NetworkImage(
                              'https://randomuser.me/api/portraits/men/32.jpg',
                            ),
                          ),

                          const SizedBox(height: 12),

                          const Text(
                            'John Doe',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF45515B),
                            ),
                          ),

                          const SizedBox(height: 3),

                          const Text(
                            'Flutter Developer',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blueGrey,
                            ),
                          ),

                          const SizedBox(height: 14),

                          const Text(
                            'Passionate about creating user-friendly '
                                'and engaging digital experiences.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF59636E),
                            ),
                          ),

                          const SizedBox(height: 14),

                          const Divider(),

                          const SizedBox(height: 4),

                          const Row(
                            children: [
                              Icon(
                                Icons.email,
                                size: 18,
                                color: Color(0xFF45515B),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  'john.doe@example.com',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 8),

                          const Row(
                            children: [
                              Icon(
                                Icons.phone,
                                size: 18,
                                color: Color(0xFF45515B),
                              ),
                              SizedBox(width: 8),
                              Text(
                                '+123 456 7890',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),

                          const SizedBox(height: 14),

                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                    const Color(0xFF0878E8),
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: const Text('Follow'),
                                ),
                              ),

                              const SizedBox(width: 8),

                              Expanded(
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor:
                                    const Color(0xFF45515B),
                                    side: const BorderSide(
                                      color: Colors.grey,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: const Text('Message'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 18),

                  // Interests Heading
                  const Row(
                    children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Interests',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF45515B),
                          ),
                        ),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // Two Interest Cards
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: interestCard(
                          image:
                          'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=500',
                          title: 'Travel',
                          description:
                          'Exploring new places around the world',
                        ),
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: interestCard(
                          image:
                          'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=500',
                          title: 'Photography',
                          description:
                          'Capturing moments through the lens',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget interestCard({
    required String image,
    required String title,
    required String description,
  }) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),

      child: Padding(
        padding: const EdgeInsets.all(8),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),

              child: Image.network(
                image,
                height: 85,
                width: double.infinity,
                fit: BoxFit.cover,

                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 85,
                    color: Colors.grey.shade200,
                    child: const Icon(Icons.image),
                  );
                },
              ),
            ),

            const SizedBox(height: 8),

            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFF45515B),
              ),
            ),

            const SizedBox(height: 5),

            Text(
              description,
              style: const TextStyle(
                fontSize: 11,
                color: Colors.blueGrey,
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: const Color(0xFFF0F1F3),
                  foregroundColor: const Color(0xFF0878E8),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const FittedBox(
                  child: Text('View More'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
