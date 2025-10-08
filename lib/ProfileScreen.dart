

//---------------new code with sizer -------------------//
import 'package:flutter/material.dart';
import 'package:newroombooking/notification.dart';
import 'package:sizer/sizer.dart';
import 'package:newroombooking/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      // backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white.withOpacity(0.8),
        elevation: 0,
        title: Text("Profile", style: textTheme.titleLarge),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 3.h),

            // Profile Picture
            Stack(
              children: [
                CircleAvatar(
                  radius: 64,
                  backgroundImage: const NetworkImage(
                    "https://lh3.googleusercontent.com/aida-public/AB6AXuC3ey6CSB4oMUYqG_43e52_SxVg3iZ88-4lQqjTI1G_xjVAA_Nnw6A7P_5i8VZipt0qB2Pi3urei721QZBb-Iq7VeDaSOpsu11XjH4H0jUq5errRaVKJdMSrINtaqRU2j4w4UJWUssG0_SjInZcn1OPO6S9AISdtqiWggOVzYYgenU0xQYNFcpW6ibmiyfOcyC6tj3dsWpDV5jwxhIvwbOQ5Q3xcQyzmIjeKKqdT-Cup4NnhH5oTVgeb9kcWRWP1408BTAKDCdNK58",
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: AppColors.primary2,
                    child: const Icon(Icons.edit, color: Colors.white, size: 18),
                  ),
                ),
              ],
            ),

            SizedBox(height: 1.h),
            Text("Sophia Carter",
                style: textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.w700)),
            SizedBox(height: 0.5.h),
            Text("Joined in 2021", style: textTheme.bodyMedium),
            SizedBox(height: 3.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle("Personal Info", textTheme),
                  _buildInfoTile(
                    icon: Icons.mail,
                    title: "Email address",
                    subtitle: "sophia.carter@email.com",
                    textTheme: textTheme,
                  ),
                  _buildInfoTile(
                    icon: Icons.phone,
                    title: "Phone number",
                    subtitle: "+1 (555) 123-4567",
                    textTheme: textTheme,
                  ),
                  SizedBox(height: 3.h),

                  _buildSectionTitle("Payment", textTheme),
                  _buildInfoTile(
                    icon: Icons.credit_card,
                    title: "Payment methods",
                    subtitle: "Visa •••• 1234",
                    textTheme: textTheme,
                  ),
                  SizedBox(height: 3.h),

                  _buildSectionTitle("Settings", textTheme),
                  _buildSwitchTile(
                    icon: Icons.notifications,
                    title: "Notifications",
                    textTheme: textTheme,
                  ),
                  _buildInfoTile(
                    icon: Icons.language,
                    title: "Language",
                    subtitle: "English",
                    textTheme: textTheme,
                  ),
                  SizedBox(height: 3.h),

                  // Logout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.logout),
                      label: Text("Log out", style: textTheme.labelLarge),
                    ),
                  ),
                  SizedBox(height: 3.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, TextTheme textTheme) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.5.h),
      child: Text(
        title,
        style: textTheme.labelMedium?.copyWith(
          fontWeight: FontWeight.w600,
          color: AppColors.textDark,
        ),
      ),
    );
  }

  Widget _buildInfoTile({
    required IconData icon,
    required String title,
    String? subtitle,
    required TextTheme textTheme,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 1,
      margin: EdgeInsets.symmetric(vertical: 0.5.h),
      child: ListTile(
        leading: CircleAvatar(
          // backgroundColor: AppColors.secondaryColor.withOpacity(0.2),
          child: Icon(icon, color: AppColors.primary2),
        ),
        title: Text(title,
            style:
                textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500)),
        subtitle:
            subtitle != null ? Text(subtitle, style: textTheme.bodyMedium) : null,
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      ),
    );
  }

  Widget _buildSwitchTile({
    required IconData icon,
    required String title,
    required TextTheme textTheme,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 1,
      margin: EdgeInsets.symmetric(vertical: 0.5.h),
      child: ListTile(
        leading: CircleAvatar(
          // backgroundColor: AppColors.secondaryColor.withOpacity(0.2),
          child: Icon(icon, color: AppColors.primary2),
        ),
        title: Text(title,
            style:
                textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500)),
        trailing: Switch(
          value: true,
          onChanged: (val) {},
          activeColor: AppColors.primary2,
        ),
      ),
    );
  }
}
