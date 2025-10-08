

import 'package:flutter/material.dart';
import 'package:newroombooking/notification.dart';
import 'theme.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  final List<Map<String, dynamic>> favorites = const [
    {
      "title": "The Grand Hotel",
      "location": "San Francisco",
      "price": "\$250 / night",
      "rating": "4.8",
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuCfBOCrt8YSYPzG7zRJKBVTpStZNf6PzUioxzmUpjXcdUcm01ywi7wJC8MW_0IIOsX-XAn1fy4IYj0rqO0MYqvqkIBMqKY7wfhe5RpDNyXPLdGj-5PQoYeev78Ulm6jO_oYJZri9440jl_4EY1zGJh0NdQf_aZy6Xj7rhjm0YB9HPYZcP1n4fEaXQ4YTsz7ufFeVu2Ux4_SlBzxWwZ2PCqdwN3vyEyts0jOHniDHPpUiIX_dSU2FEXiSNzjhKJJrTe0-YWNSk9e0HE"
    },
    {
      "title": "Central Park Inn",
      "location": "New York",
      "price": "\$320 / night",
      "rating": "4.5",
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuBn2KySBFxzubA3SMtRgszJzhsddPoQVpfs0KOV9eoNwRIZsbtuSR2Xe64RRsqaJEH2dWGUcvTe0bDyTBEo2X9nboB-kYs_jBf8RqUcw45OcvAtSHq7QdmXLEJaVDu99q6shJ1UYeMgpFTPA2LBovhd0KQGSOrEzvLZfjpTynp67vjF-AUxOdQaDrw1pYuoBuGVHQutzhJh9PIs1Tv0bw1yf_e5nz4kjkCANaOKN4Kw9oeHD-_Jvzw5pVB4n8BdzXWWZ4XcHdFmnYY"
    },
    {
      "title": "Sunset Resort",
      "location": "Los Angeles",
      "price": "\$400 / night",
      "rating": "4.9",
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuCTcyRj-_nSWZuSdprHIMs3EXJnaiOshjDVj_brI1NQD_dyZpnBHR9xtTlzjrWnoI-MeF23u1C_laW_jMYhG2Y9vYy4thnhtuwQ_a107V6PvK5wGO4Fbm1ugG7bcCe3xS3kcb_VDfO9XBcvoXMd0HvdrPtGTybCaRSBAglI_jMMFikudxvIm2L5-9OFajs4qh68p-b5l7JAkg-enGv_vNdV-gx7pwfipEYH7iotzoKNiuV-3pwcIQXJKOo4XRDFYSfKiaqZIf0NZN8"
    },
    {
      "title": "Windy City Suites",
      "location": "Chicago",
      "price": "\$280 / night",
      "rating": "4.7",
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuDbMNIL6_AQ0cyptttFVA7uAktIzFt4tgbaq8ZI1KUR9wni0RLUrA7HFrp9gsI2AUTtOhGxbaZNTCfH-u4WVyi_qTjLZHPD33NkGrKaQjDFPlg6nQKi1lbF-SkmNMgGCSyFkpABzOYIvfvZtq4ymLfSnLxNRfyz06RoeuufHU-wvNuWi5SipXnhGCDl6d-TrQYkhMwCvttdBIR5t2oDp634zoD1Yc5m7-zUzsfdZAmCQkb2NdjSyvfhfLOlLNQlkePe5Xtr94heMxw"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white.withOpacity(0.8),
        elevation: 0,
        title: Text("Favorites", style: textTheme.titleLarge),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications_none),
                onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => NotificationScreen(),)
                  );
                },
              ),
              Positioned(
                right: 11,
                top: 11,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: AppColors.primary2,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final item = favorites[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                  child: Image.network(
                    item["image"],
                    width: 100,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                ),
                // Details
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item["title"],
                          style: textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          item["location"],
                          style: textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            const Icon(Icons.star,
                                color: AppColors.rating, size: 16),
                            const SizedBox(width: 4),
                            Text(
                              item["rating"],
                              style: textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Text(
                          item["price"],
                          style: textTheme.bodyLarge?.copyWith(
                            color: AppColors.primary2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Favorite button
                IconButton(
                  icon: const Icon(Icons.favorite, color: AppColors.danger),
                  onPressed: () {},
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
