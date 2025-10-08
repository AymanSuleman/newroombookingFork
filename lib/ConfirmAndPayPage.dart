

import 'package:flutter/material.dart';
import 'package:newroombooking/BookingConfirmationPage.dart';
import 'package:newroombooking/theme.dart';

class ConfirmAndPayPage extends StatelessWidget {
  const ConfirmAndPayPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: AppColors.background, // themed background
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.9),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: AppColors.textDark),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Confirm and Pay",
          style: textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold, color: AppColors.textDark),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Room card
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.container,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Entire suite",
                          style: textTheme.bodyLarge?.copyWith(
                             ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Luxury Suite with Ocean View",
                          style: textTheme.bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            const Icon(Icons.star, size: 16, color: Colors.amber),
                            const SizedBox(width: 4),
                            Text(
                              "4.95",
                              style: textTheme.bodySmall
                                  ?.copyWith(color: AppColors.textLight.withOpacity(0.7)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      "https://lh3.googleusercontent.com/aida-public/AB6AXuDRwXH5OrsFOq9ixkFd7oM1M29YCM0U2zQ24-CdUfuekiCJA-mpUfT_A7q8AGcogqbwwY-aXhe8Z5P6WlcFsF6U9JdzIlrF8PnnpG-JSFxyFpij9eZbLr5VK3wPMpIsA4VTJScQrJO6zuALQhi6PcUlR8KBORJH79j8fO_keY7xOYJST7NjSJHqsatYxIzvh1KOlQoGKI9H_DKgCL8ET4suW4O5seWnzmMKSqzcnrVw4afEp5vqiXBAosk2cdRmh7CIkTgDG19o_6g",
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 32),

            // Trip section
            Text(
              "Your trip",
              style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildRowWithEdit(context, "Dates", "Mar 15 – 20"),
            const SizedBox(height: 12),
            _buildRowWithEdit(context, "Guests", "2 guests"),

            const Divider(height: 32),

            // Price details
            Text(
              "Price details",
              style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildRow(context, "5 nights", "\$1,500.00"),
            _buildRow(context, "Taxes", "\$150.00"),
            const Divider(height: 24),
            _buildRow(context, "Total (USD)", "\$1,650.00", bold: true),

            const Divider(height: 32),

            // Pay with
            Text(
              "Pay with",
              style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Container(
                  height: 32,
                  width: 48,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.textLight.withOpacity(0.3)),
                    borderRadius: BorderRadius.circular(6),
                    image: const DecorationImage(
                      fit: BoxFit.contain,
                      image: NetworkImage(
                        "https://lh3.googleusercontent.com/aida-public/AB6AXuCJeFMUCulIJtrpo_eekh5MRefM9P6nJjV-ieTAdJjYrTDTjt7Glvc64wooiGqWCLtyFymcnF5Gh-2toMOuf7XU5p5myqq75l_uZLh-aA5i1s5_xbXYJzj2BGC5lM8QGKgsDwPmkqVg95EkWcc2snsuB4GMzrnR8crpgJeCqwK_WyZBKG8C_ltaDw3CiX8u2gtGiJmvjMHysDWtmz7Nng63pWF32MSu7qUsT_TY5LK29m3hvHupImLAavFM2gSkUTyNoAV1PI0HI9A",
                      ),
                    ),
                  ),
                ),
                Text("•••• 1234", style: textTheme.bodyLarge),
                const Spacer(),
                Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: AppColors.primary2,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Edit",
                      style: textTheme.bodyMedium?.copyWith(
                        color: AppColors.container,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const Divider(height: 32),

            // Cancellation policy
            Text(
              "Cancellation policy",
              style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            RichText(
              text: TextSpan(
                style: textTheme.bodySmall?.copyWith(color: Colors.grey),
                children: [
                  const TextSpan(
                      text:
                          "Cancel before 2:00 PM on Mar 10 for a partial refund. After that, this reservation is non-refundable. "),
                  TextSpan(
                    text: "Learn more",
                    style: textTheme.bodySmall?.copyWith(
                      color: AppColors.primary2,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.container.withOpacity(0.95),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary2,
            minimumSize: const Size(double.infinity, 56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 4,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const BookingConfirmationPage()));
          },
          child: Text(
            "Request to book",
            style: textTheme.bodyLarge?.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.iconBg,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRow(BuildContext context, String label, String value,
      {bool bold = false}) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: textTheme.bodySmall?.copyWith(
                  fontWeight: bold ? FontWeight.bold : FontWeight.normal,
                  )),
          Text(value,
              style: textTheme.bodyMedium?.copyWith(
                  fontWeight: bold ? FontWeight.bold : FontWeight.w500,
          )),
        ],
      ),
    );
  }

  Widget _buildRowWithEdit(BuildContext context, String label, String value) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label,
                style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500, )),
            const SizedBox(height: 2),
            Text(value,
                style: textTheme.bodySmall?.copyWith()),
          ],
        ),
        Container(
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: AppColors.primary2,
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Edit",
              style: textTheme.bodyMedium?.copyWith(
                color: AppColors.container,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
