// //---------------new code with sizer -------------------//
// import 'package:flutter/material.dart';
// import 'package:newroombooking/notification.dart';
// import 'package:sizer/sizer.dart';
// import 'package:newroombooking/theme.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;

//     return Scaffold(
//       // backgroundColor: AppColors.backgroundColor,
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: Text("Profile", style: textTheme.titleLarge),
//         actions: [
//           Stack(
//             children: [
//               IconButton(
//                 icon: const Icon(Icons.notifications_none),
//                 onPressed: () {
//                   Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => NotificationScreen(),)
//                   );
//                 },
//               ),
//               Positioned(
//                 right: 11,
//                 top: 11,
//                 child: Container(
//                   height: 10,
//                   width: 10,
//                   decoration: BoxDecoration(
//                     color: AppColors.primary2,
//                     shape: BoxShape.circle,
//                     border: Border.all(color: Colors.white, width: 2),
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 3.h),

//             // Profile Picture
//             Stack(
//               children: [
//                 CircleAvatar(
//                   radius: 64,
//                   backgroundImage: const NetworkImage(
//                     "https://lh3.googleusercontent.com/aida-public/AB6AXuC3ey6CSB4oMUYqG_43e52_SxVg3iZ88-4lQqjTI1G_xjVAA_Nnw6A7P_5i8VZipt0qB2Pi3urei721QZBb-Iq7VeDaSOpsu11XjH4H0jUq5errRaVKJdMSrINtaqRU2j4w4UJWUssG0_SjInZcn1OPO6S9AISdtqiWggOVzYYgenU0xQYNFcpW6ibmiyfOcyC6tj3dsWpDV5jwxhIvwbOQ5Q3xcQyzmIjeKKqdT-Cup4NnhH5oTVgeb9kcWRWP1408BTAKDCdNK58",
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 0,
//                   right: 0,
//                   child: CircleAvatar(
//                     radius: 18,
//                     backgroundColor: AppColors.primary2,
//                     child: const Icon(Icons.edit, color: Colors.white, size: 18),
//                   ),
//                 ),
//               ],
//             ),

//             SizedBox(height: 1.h),
//             Text("Sophia Carter",
//                 style: textTheme.titleMedium
//                     ?.copyWith(fontWeight: FontWeight.w700)),
//             SizedBox(height: 0.5.h),
//             Text("Joined in 2021", style: textTheme.bodyMedium),
//             SizedBox(height: 3.h),

//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 4.w),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   _buildSectionTitle("Personal Info", textTheme),
//                   _buildInfoTile(
//                     icon: Icons.mail,
//                     title: "Email address",
//                     subtitle: "sophia.carter@email.com",
//                     textTheme: textTheme,
//                   ),
//                   _buildInfoTile(
//                     icon: Icons.phone,
//                     title: "Phone number",
//                     subtitle: "+1 (555) 123-4567",
//                     textTheme: textTheme,
//                   ),
//                   SizedBox(height: 3.h),

//                   _buildSectionTitle("Payment", textTheme),
//                   _buildInfoTile(
//                     icon: Icons.credit_card,
//                     title: "Payment methods",
//                     subtitle: "Visa •••• 1234",
//                     textTheme: textTheme,
//                   ),
//                   SizedBox(height: 3.h),

//                   _buildSectionTitle("Settings", textTheme),
//                   _buildSwitchTile(
//                     icon: Icons.notifications,
//                     title: "Notifications",
//                     textTheme: textTheme,
//                   ),
//                   _buildInfoTile(
//                     icon: Icons.language,
//                     title: "Language",
//                     subtitle: "English",
//                     textTheme: textTheme,
//                   ),
//                   SizedBox(height: 3.h),

//                   // Logout Button
//                   SizedBox(
//                     width: double.infinity,
//                     child: ElevatedButton.icon(
//                       onPressed: () {},
//                       icon: const Icon(Icons.logout),
//                       label: Text("Log out", style: textTheme.labelLarge),
//                     ),
//                   ),
//                   SizedBox(height: 3.h),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSectionTitle(String title, TextTheme textTheme) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 0.5.h),
//       child: Text(
//         title,
//         style: textTheme.labelMedium?.copyWith(
//           fontWeight: FontWeight.w600,
//           color: AppColors.textDark,
//         ),
//       ),
//     );
//   }

//   Widget _buildInfoTile({
//     required IconData icon,
//     required String title,
//     String? subtitle,
//     required TextTheme textTheme,
//   }) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       elevation: 1,
//       margin: EdgeInsets.symmetric(vertical: 0.5.h),
//       child: ListTile(
//         leading: CircleAvatar(
//           // backgroundColor: AppColors.secondaryColor.withOpacity(0.2),
//           child: Icon(icon, color: AppColors.primary2),
//         ),
//         title: Text(title,
//             style:
//                 textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500)),
//         subtitle:
//             subtitle != null ? Text(subtitle, style: textTheme.bodyMedium) : null,
//         trailing: const Icon(Icons.chevron_right),
//         onTap: () {},
//       ),
//     );
//   }

//   Widget _buildSwitchTile({
//     required IconData icon,
//     required String title,
//     required TextTheme textTheme,
//   }) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       elevation: 1,
//       margin: EdgeInsets.symmetric(vertical: 0.5.h),
//       child: ListTile(
//         leading: CircleAvatar(
//           // backgroundColor: AppColors.secondaryColor.withOpacity(0.2),
//           child: Icon(icon, color: AppColors.primary2),
//         ),
//         title: Text(title,
//             style:
//                 textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500)),
//         trailing: Switch(
//           value: true,
//           onChanged: (val) {},
//           activeColor: AppColors.primary2,
//         ),
//       ),
//     );
//   }
// }


//---------------------- new profile -------------------------//
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:newroombooking/theme.dart';

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: AppColors.backgroundColor,
//       body: SafeArea(
//         child: Stack(
//           children: [
//             // ===== Top Header =====
//             Container(
//               height: 28.h,
//               decoration: BoxDecoration(
//                 color: AppColors.primary2,
//                 borderRadius: const BorderRadius.only(
//                   bottomLeft: Radius.circular(40),
//                   bottomRight: Radius.circular(40),
//                 ),
//               ),
//               child: Stack(
//                 children: [
//                   Positioned(
//                     top: -40,
//                     left: -40,
//                     child: Container(
//                       width: 160,
//                       height: 160,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.white.withOpacity(0.1),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 20,
//                     right: -20,
//                     child: Container(
//                       width: 100,
//                       height: 100,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.white.withOpacity(0.1),
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.topLeft,
//                     child: Padding(
//                       padding: EdgeInsets.only(left: 4.w, top: 2.h),
//                       child: IconButton(
//                         onPressed: () => Navigator.pop(context),
//                         icon: const Icon(Icons.arrow_back_ios,
//                             color: Colors.white),
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.topCenter,
//                     child: Padding(
//                       padding: EdgeInsets.only(top: 2.5.h),
//                       child: Text(
//                         "Profile",
//                         style: Theme.of(context).textTheme.titleLarge?.copyWith(
//                               color: Colors.white,
//                               fontWeight: FontWeight.w600,
//                             ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             // ===== Main Scrollable Card =====
//             SingleChildScrollView(
//               child: Padding(
//                 padding: EdgeInsets.only(top: 16.h, left: 5.w, right: 5.w),
//                 child: Container(
//                   width: double.infinity,
//                   padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(25),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black12,
//                         blurRadius: 8,
//                         offset: const Offset(0, 3),
//                       ),
//                     ],
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       // ===== Profile Photo =====
//                       CircleAvatar(
//                         radius: 45,
//                         backgroundImage: const NetworkImage(
//                           "https://lh3.googleusercontent.com/aida-public/AB6AXuC3ey6CSB4oMUYqG_43e52_SxVg3iZ88-4lQqjTI1G_xjVAA_Nnw6A7P_5i8VZipt0qB2Pi3urei721QZBb-Iq7VeDaSOpsu11XjH4H0jUq5errRaVKJdMSrINtaqRU2j4w4UJWUssG0_SjInZcn1OPO6S9AISdtqiWggOVzYYgenU0xQYNFcpW6ibmiyfOcyC6tj3dsWpDV5jwxhIvwbOQ5Q3xcQyzmIjeKKqdT-Cup4NnhH5oTVgeb9kcWRWP1408BTAKDCdNK58",
//                         ),
//                         backgroundColor: AppColors.primary2.withOpacity(0.2),
//                       ),
//                       SizedBox(height: 1.5.h),
//                       Text(
//                         "laxmi",
//                         style: Theme.of(context).textTheme.titleLarge?.copyWith(
//                               fontWeight: FontWeight.w600,
//                               color: Colors.black87,
//                             ),
//                       ),
//                       Text(
//                         "laxmi69@gmail.com",
//                         style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                               color: Colors.grey.shade600,
//                             ),
//                       ),

//                       SizedBox(height: 3.h),

//                       // ===== Settings =====
//                       Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           "Settings",
//                           style:
//                               Theme.of(context).textTheme.titleMedium?.copyWith(
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.black87,
//                                   ),
//                         ),
//                       ),
//                       SizedBox(height: 1.5.h),
//                       _buildOptionTile(
//                           context, Icons.payment, "Payment Method"),
//                       _buildOptionTile(context, Icons.language, "Languages"),
//                       _buildOptionTile(
//                           context, Icons.dark_mode_outlined, "Dark Theme"),

//                       SizedBox(height: 3.h),

//                       // ===== Support =====
//                       Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           "Support",
//                           style:
//                               Theme.of(context).textTheme.titleMedium?.copyWith(
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.black87,
//                                   ),
//                         ),
//                       ),
//                       SizedBox(height: 1.5.h),
//                       _buildOptionTile(
//                           context, Icons.help_outline, "Help Centre"),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildOptionTile(BuildContext context, IconData icon, String title) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 1.5.h),
//       decoration: BoxDecoration(
//         color: AppColors.primary2.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: ListTile(
//         leading: Icon(icon, color: AppColors.primary2),
//         title: Text(
//           title,
//           style: Theme.of(context).textTheme.bodyLarge?.copyWith(
//                 color: Colors.black87,
//                 fontWeight: FontWeight.w500,
//               ),
//         ),
//         trailing: Icon(Icons.arrow_forward_ios_rounded,
//             size: 18, color: Colors.grey.shade500),
//         onTap: () {},
//       ),
//     );
//   }
// }

//-------------latest profile with card ------------------------//
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:newroombooking/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      // backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            // ===== Top Header =====
            Container(
              height: 28.h,
              decoration: BoxDecoration(
                color: AppColors.primary2,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: -40,
                    left: -40,
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.1),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: -20,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.1),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.w, top: 2.h),
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 2.5.h),
                      child: Text(
                        "Profile",
                        style: textTheme.titleLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // ===== Main Scrollable Card =====
            Padding(
              padding: EdgeInsets.only(top: 12.h, left: 5.w, right: 5.w),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // ===== Profile Photo =====
                      CircleAvatar(
                        radius: 45,
                        backgroundImage: NetworkImage(
                          "https://lh3.googleusercontent.com/a-/AOh14Gh6mY3Y0uKkFZyS0_examplephoto",
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        "VIKRAM",
                        style: textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        "vikramtech69@gmail.com",
                        style: textTheme.bodyMedium?.copyWith(
                          color: Colors.grey.shade600,
                        ),
                      ),
                      SizedBox(height: 3.h),
                              
                      // ===== All Info Tiles inside card =====
                      _buildSectionTitle("Personal Info", textTheme),
                      _buildInfoTile(
                        icon: Icons.mail,
                        title: "Email address",
                        subtitle: "vikramtech69@gmail.com",
                        textTheme: textTheme,
                      ),
                      _buildInfoTile(
                        icon: Icons.phone,
                        title: "Phone number",
                        subtitle: "+91 98765 43210",
                        textTheme: textTheme,
                      ),
                      SizedBox(height: 1.h),
                              
                      _buildSectionTitle("Payment", textTheme),
                      _buildInfoTile(
                        icon: Icons.credit_card,
                        title: "Payment methods",
                        subtitle: "Visa •••• 1234",
                        textTheme: textTheme,
                      ),
                      SizedBox(height: 1.h),
                              
                      // _buildSectionTitle("Settings", textTheme),
                      // _buildSwitchTile(
                      //   icon: Icons.notifications,
                      //   title: "Notifications",
                      //   textTheme: textTheme,
                      // ),
                      // _buildInfoTile(
                      //   icon: Icons.language,
                      //   title: "Language",
                      //   subtitle: "English",
                      //   textTheme: textTheme,
                      // ),
                      SizedBox(height: 1.h),
                              
                      // ===== Logout Button =====
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary2,
                            padding: EdgeInsets.symmetric(vertical: 1.6.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.logout, color: Colors.white),
                          label: Text(
                            "Log out",
                            style: textTheme.labelLarge?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ===== Helper Widgets =====

  Widget _buildSectionTitle(String title, TextTheme textTheme) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.5.h),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.primary2,
          ),
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
          backgroundColor: AppColors.primary2.withOpacity(0.15),
          child: Icon(icon, color: AppColors.primary2),
        ),
        title: Text(
          title,
          style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
        ),
        subtitle: subtitle != null
            ? Text(subtitle, style: textTheme.bodyMedium)
            : null,
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
          backgroundColor: AppColors.primary2.withOpacity(0.15),
          child: Icon(icon, color: AppColors.primary2),
        ),
        title: Text(
          title,
          style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
        ),
        trailing: Switch(
          value: true,
          onChanged: (val) {},
          activeColor: AppColors.primary2,
        ),
      ),
    );
  }
}
