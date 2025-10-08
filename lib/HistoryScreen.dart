

import 'package:flutter/material.dart';
import 'package:newroombooking/RoomDetailsPage.dart';
import 'package:newroombooking/notification.dart';
import 'package:newroombooking/theme.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  final List<Map<String, dynamic>> bookings = const [
    {
      "title": "The Grand Majestic Hotel",
      "subtitle": "Oct 12 - 14, 2023",
      "status": "Completed",
      "statusColor": Colors.green,
      "statusIcon": Icons.check_circle,
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuBfennMMCkl4Hz4a1qH6eD7-pOZcnhWdu0KXTapxGfaqLC23iHba_N1edEJe29tV_L4DUhuIeTN0p8nymajtY__NTou6mf-t2UJIqHDp3M9-1ZsBYGObwoA7MTLv-1iQC0i2ldgHaJy8Fpd3DpHgds1dC1x7GnyCqWC756CK-jPAffpWpFfym8gKed1jrKJYqDCjRJkdrTZuMecL3Im_uI_yaf7iYzyTG6t3jUe4LFuN6V5G8nH14GAx5K-WpyG71lOgmmU7tSGTZE",
    },
    {
      "title": "Ocean View Resort",
      "subtitle": "Aug 20 - 22, 2023",
      "status": "Cancelled",
      "statusColor": Colors.red,
      "statusIcon": Icons.cancel,
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuDcR4UY5fT-lXeKFHkdYLP4bTelTPQfB4WvJK8ZyK2WAqcbzjSstUB1C-DEKa7UZ_xIrNvzZK2f6WOf96-Lu-8jRkZibyLqkbVU5tiq4PwG_Gha-NY6IPBGWohIvw_nGH9byKFML7nUeyQ0x73ahIXn2l54XaDxz7PJLW9ZZ9g8lFqKYFVa4G4mNT53f2qJmWigCPnTD1FKyIv1UFsRwENFRun6_qbBNOVvX7bFVAzeYks8BiKm-Lk2x9JP32P5E8Q2n_GWwn_5iVs",
    },
    {
      "title": "Mountain Retreat Lodge",
      "subtitle": "Jun 5 - 7, 2023",
      "status": "Completed",
      "statusColor": Colors.green,
      "statusIcon": Icons.check_circle,
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuAILnepiIq-uxMG5i47YcXAZ7jiyCd1lt6f6FIYIcb3okf9P1Zlet9h1_TcvpS4HL1vEv8EcPudMeAUP3NzRgPAA7t3Nh5tUruwVkR0GQuAqMjD2iONHVgAaqLpTMeVzSHj0Q8r7OHr7bNQhSOMwyTcKtupeYczFZk9GLNfaJWvE0hqTxSZFimDVjW0a_WvWi8LvDrGJ_9mdfce7_u5xNsDLblvKui7M-oH3t-kM1_AdaCOE3XvXO3IvveKDcPe6_SS_akwyYKGkVY",
    },
    {
      "title": "City Center Plaza",
      "subtitle": "Apr 18 - 20, 2023",
      "status": "Completed",
      "statusColor": Colors.green,
      "statusIcon": Icons.check_circle,
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuCD1a5fyiJFWeX2LbT4Dk4IZsj-0rknZ3nMGYBmz1iBkFW3mscF3yQFeue4NFi5H4RyFXzpuKwyDVUAMmvvXL9UW6riT7l-WZKDZRM6hfcaaJmiOOTz-M4uHZiMvPChJ523oXq7AD18ABP26qQ3LSCKE0htaBtTDqTqXIL6UbkuUzpFOid_8L28Y2FWQcBCsX8kkhZNcXXor7rXD4HTFDNkfuPARrA7zka47ixQU2hbJrlOifF62i-f6YrSgMqHyZZSslhYO6OJu88",
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
        title: Text("History", style: textTheme.titleLarge),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications_none),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen(),));
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
        itemCount: bookings.length,
        itemBuilder: (context, index) {
          final booking = bookings[index];
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
                    booking['image'],
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
                          booking['title'],
                          style: textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          booking['subtitle'],
                          style: textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              booking['statusIcon'],
                              color: booking['statusColor'],
                              size: 18,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              booking['status'],
                              style: textTheme.bodyLarge?.copyWith(
                                color: booking['statusColor'],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // View Details Button
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.primary2,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RoomDetailsPage(),
                        ),
                      );
                    },
                    child: Text(
                      "View Details",
                      style: textTheme.labelLarge?.copyWith(
                        color: AppColors.container,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
