import 'package:flutter/material.dart';

class RecommendedScreen extends StatelessWidget {
  const RecommendedScreen(TabController controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16),

              // Title
              const Text(
                "A selection of 5 profiles suggested everyday",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 20),

              // Thumbnails row
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildThumbnail(
                      "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg",
                      isSelected: true,
                    ),
                    _buildThumbnail(
                      "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg",
                    ),
                    _buildThumbnail(
                      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg",
                    ),
                    _buildThumbnail(
                      "https://images.pexels.com/photos/1181686/pexels-photo-1181686.jpeg",
                    ),
                    _buildThumbnail(
                      "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Main Profile Card
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Profile image with overlay text
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                            child: Image.network(
                              "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg",
                              height: 320,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Positioned(
                            left: 16,
                            bottom: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jane",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black12,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "32 yrs",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black12,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  "Nakuru, Kenya",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      // Hobbies section
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "My hobbies include",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Swimming, deep conversations over tea, exploring hidden gems around the city",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const Spacer(),

                      // View Profile button
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "View Profile",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(Icons.arrow_forward, size: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable thumbnail widget
  Widget _buildThumbnail(String url, {bool isSelected = false}) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: isSelected ? const EdgeInsets.all(2) : EdgeInsets.zero,
      decoration: BoxDecoration(
        border: isSelected ? Border.all(color: Colors.orange, width: 2) : null,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          url,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
