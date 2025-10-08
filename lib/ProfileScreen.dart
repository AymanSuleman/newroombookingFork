// import 'package:flutter/material.dart';
// import 'theme.dart'; // your custom colors

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.background, // use your background color
//       appBar: AppBar(
//          automaticallyImplyLeading: false,
//         backgroundColor: Colors.white.withOpacity(0.8),
//         elevation: 0,
//         centerTitle: true,
//         title: const Text(
//           "Profile",
//           style: TextStyle(
//             color: AppColors.textDark,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         // leading: const SizedBox(width: 12), // same as empty div in HTML
//         // actions: [
//         //   IconButton(
//         //     icon: const Icon(
//         //       Icons.settings,
//         //       color: AppColors.textDark,
//         //     ),
//         //     onPressed: () {},
//         //   ),
//         // ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(height: 20),
//             // Profile Picture
//             Stack(
//               children: [
//                 CircleAvatar(
//                   radius: 64,
//                   backgroundImage: NetworkImage(
//                       "https://lh3.googleusercontent.com/aida-public/AB6AXuC3ey6CSB4oMUYqG_43e52_SxVg3iZ88-4lQqjTI1G_xjVAA_Nnw6A7P_5i8VZipt0qB2Pi3urei721QZBb-Iq7VeDaSOpsu11XjH4H0jUq5errRaVKJdMSrINtaqRU2j4w4UJWUssG0_SjInZcn1OPO6S9AISdtqiWggOVzYYgenU0xQYNFcpW6ibmiyfOcyC6tj3dsWpDV5jwxhIvwbOQ5Q3xcQyzmIjeKKqdT-Cup4NnhH5oTVgeb9kcWRWP1408BTAKDCdNK58"),
//                 ),
//                 Positioned(
//                   bottom: 0,
//                   right: 0,
//                   child: CircleAvatar(
//                     radius: 16,
//                     backgroundColor: AppColors.primary2,
//                     child:
//                         const Icon(Icons.edit, color: Colors.white, size: 18),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 12),
//             const Text(
//               "Sophia Carter",
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: AppColors.textDark,
//               ),
//             ),
//             const SizedBox(height: 4),
//             const Text(
//               "Joined in 2021",
//               style: TextStyle(
//                 fontSize: 14,
//                 color: AppColors.textLight,
//               ),
//             ),
//             const SizedBox(height: 24),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Column(
//                 children: [
//                   // Personal Info Section
//                   _buildSectionTitle("Personal info"),
//                   _buildInfoTile(
//                       icon: Icons.mail,
//                       title: "Email address",
//                       subtitle: "sophia.carter@email.com"),
//                   _buildInfoTile(
//                       icon: Icons.phone,
//                       title: "Phone number",
//                       subtitle: "+1 (555) 123-4567"),
//                   const SizedBox(height: 24),
//                   // Payment Section
//                   _buildSectionTitle("Payment"),
//                   _buildInfoTile(
//                       icon: Icons.credit_card,
//                       title: "Payment methods",
//                       subtitle: "Visa •••• 1234"),
//                   const SizedBox(height: 24),
//                   // Settings Section
//                   _buildSectionTitle("Settings"),
//                   _buildSwitchTile(
//                       icon: Icons.notifications, title: "Notifications"),
//                   _buildInfoTile(
//                       icon: Icons.language,
//                       title: "Language",
//                       subtitle: "English"),
//                   const SizedBox(height: 24),
//                   // Logout Button
//                   // ElevatedButton.icon(
//                   //   style: ElevatedButton.styleFrom(
//                   //     backgroundColor: AppColors.container,
//                   //     foregroundColor: Colors.blue,
//                   //     padding: const EdgeInsets.symmetric(vertical: 16),
//                   //     shape: RoundedRectangleBorder(
//                   //         borderRadius: BorderRadius.circular(10)),
//                   //   ),
//                   //   onPressed: () {},
//                   //   icon: const Icon(Icons.logout),
//                   //   label: const Text(
//                   //     "Log out",
//                   //     style: TextStyle(fontWeight: FontWeight.bold),
//                   //   ),
//                   // ),
//                   Container(
//                     margin:
//                         const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
//                     decoration: BoxDecoration(
//                       color: AppColors.container,
//                       borderRadius: BorderRadius.circular(16),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.05),
//                           blurRadius: 5,
//                           offset: const Offset(0, 2),
//                         ),
//                       ],
//                     ),
//                     child: SizedBox(
//                       width: double.infinity, // makes the button full width
//                       child: TextButton.icon(
//                         style: TextButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(
//                               vertical: 16, horizontal: 16),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                           foregroundColor:
//                               AppColors.primary2, // red text & icon
//                         ),
//                         onPressed: () {
//                           // handle logout
//                         },
//                         icon: const Icon(Icons.logout),
//                         label: const Text(
//                           "Log out",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 24),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   // Section title
//   Widget _buildSectionTitle(String title) {
//     return Align(
//       alignment: Alignment.centerLeft,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 8.0),
//         child: Text(
//           title,
//           style: const TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//               color: AppColors.textDark),
//         ),
//       ),
//     );
//   }

//   // Normal info tile
//   Widget _buildInfoTile(
//       {required IconData icon, required String title, String? subtitle}) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       elevation: 1,
//       margin: const EdgeInsets.symmetric(vertical: 4),
//       child: ListTile(
//         leading: CircleAvatar(
//           backgroundColor: AppColors.iconBg,
//           child: Icon(icon, color: AppColors.textDark),
//         ),
//         title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
//         subtitle: subtitle != null ? Text(subtitle) : null,
//         trailing: const Icon(Icons.chevron_right),
//         onTap: () {},
//       ),
//     );
//   }

//   // Switch tile
//   Widget _buildSwitchTile({required IconData icon, required String title}) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       elevation: 1,
//       margin: const EdgeInsets.symmetric(vertical: 4),
//       child: ListTile(
//         leading: CircleAvatar(
//           backgroundColor: AppColors.iconBg,
//           child: Icon(icon, color: AppColors.textDark),
//         ),
//         title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
//         trailing: Switch(value: true, onChanged: (val) {}),
//       ),
//     );
//   }
// }




//---------------new code with sizer -------------------//
import 'package:flutter/material.dart';
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
        title: Text("Profile", style: textTheme.titleLarge),
        centerTitle: true,
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
