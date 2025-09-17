import 'package:flutter/material.dart';
import 'theme.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {"title": "Booking Confirmed", "message": "Your stay at The Grand Majestic is confirmed."},
      {"title": "New Offer", "message": "Get 20% off on seaside villas this weekend."},
      {"title": "Reminder", "message": "Don’t forget your upcoming booking tomorrow."},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black), // back icon black
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: notifications.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          final item = notifications[index];
          return ListTile(
            leading: const Icon(Icons.notifications, color: AppColors.primary2),
            title: Text(item["title"]!, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(item["message"]!),
            onTap: () {
              // You can navigate to booking/details if needed
            },
          );
        },
      ),
    );
  }
}
