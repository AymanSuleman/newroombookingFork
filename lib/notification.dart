import 'package:flutter/material.dart';
import 'theme.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {
        "title": "Booking Confirmed",
        "message": "Your stay at The Grand Majestic is confirmed.",
        "time": "2h ago"
      },
      {
        "title": "New Offer",
        "message": "Get 20% off on seaside villas this weekend.",
        "time": "5h ago"
      },
      {
        "title": "Reminder",
        "message": "Don’t forget your upcoming booking tomorrow.",
        "time": "1d ago"
      },
    ];

    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: textTheme.titleLarge?.copyWith(color: AppColors.textDark),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final item = notifications[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 3,
            margin: const EdgeInsets.only(bottom: 16),
            shadowColor: AppColors.primary2.withOpacity(0.3),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.primary2.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.notifications, color: AppColors.primary2),
              ),
              title: Text(
                item["title"]!,
                style: textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold, color: AppColors.textDark),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  Text(
                    item["message"]!,
                    style: textTheme.bodyMedium?.copyWith(color: AppColors.textLight),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    item["time"]!,
                    style: textTheme.bodyMedium?.copyWith(
                        color: AppColors.textLight, fontSize: 12),
                  ),
                ],
              ),
              trailing: const Icon(Icons.chevron_right, color: AppColors.textLight),
              onTap: () {
                // Handle tap: navigate to detail page if needed
              },
            ),
          );
        },
      ),
    );
  }
}
