// import 'package:flutter/material.dart';
// import 'package:newroombooking/HotelBookingWelcome.dart';
// import 'package:newroombooking/theme.dart';
// import 'package:sizer/sizer.dart';

// class CreateAccountScreen extends StatefulWidget {
//   const CreateAccountScreen({super.key});

//   @override
//   State<CreateAccountScreen> createState() => _CreateAccountScreenState();
// }

// class _CreateAccountScreenState extends State<CreateAccountScreen> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   bool obscurePassword = true;

//   @override
//   void dispose() {
//     nameController.dispose();
//     emailController.dispose();
//     passwordController.dispose();
//     super.dispose();
//   }

//   InputDecoration _buildInputDecoration(String hint) {
//     return InputDecoration(
//       hintText: hint,
//       hintStyle: Theme.of(context)
//           .textTheme
//           .bodyMedium
//           ?.copyWith(color: AppColors.textLight),
//       filled: true,
//       fillColor: AppColors.container,
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(15),
//         borderSide: BorderSide.none,
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(15),
//         borderSide: const BorderSide(color: AppColors.primary2, width: 2),
//       ),
//       contentPadding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;

//     return Scaffold(
//       backgroundColor: AppColors.background,
//       body: SafeArea(
//         child: Column(
//           children: [
//             // Header with Network Image and Gradient Overlay
//             Stack(
//               children: [
//                 // Header Image
//                 Container(
//                   height: 40.h,
//                   width: double.infinity,
//                   child: Image.network(
//                     'https://lh3.googleusercontent.com/aida-public/AB6AXuAFlwVEipjMGkvA6rtt47HJtlF9ECWHfx2fu4rqzxP9eBgtY3PJmg2fJe39XNBAJQCbKg8BUyHCGdh6GzQ-Yh7YB5-aahTtiZguY3oChPv_jiaB-E4ZTNLC8a2VRoKuCBNMeHeL6912EYi1jamchCrXKSc1fOhjK2vEjbqmRvGE17LR0HRGsFI1WW2MtftRNSNoXvFFhrDWoqg44q7ngCseZfsFLdr5x97qKwanf6e6M1JEeqf12DUwOwiJfLlOkDzjh5q8wzBmHI0',
//                     fit: BoxFit.cover,
//                   ),
//                 ),

//                 // Gradient overlay (optional for better contrast)
//                 Container(
//                   height: 40.h,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [
//                         Colors.black.withOpacity(0.2),
//                         Colors.transparent
//                       ],
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                     ),
//                   ),
//                 ),
//                 // Back button & Title
//                 Positioned(
//                   top: 2.h,
//                   left: 4.w,
//                   right: 4.w,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       CircleAvatar(
//                         backgroundColor: Colors.white.withOpacity(0.3),
//                         child: IconButton(
//                           onPressed: () => Navigator.pop(context),
//                           icon: const Icon(Icons.arrow_back),
//                           color: AppColors.container,
//                         ),
//                       ),
//                       Text(
//                         "Create Account",
//                         style: textTheme.titleLarge?.copyWith(
//                             color: AppColors.container,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(width: 48), // placeholder
//                     ],
//                   ),
//                 ),
//               ],
//             ),

//             // Form
//             Expanded(
//               child: Container(
//                 width: double.infinity,
//                 padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
//                 decoration: BoxDecoration(
//                   color: AppColors.background,
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(35),
//                     topRight: Radius.circular(35),
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.05),
//                       blurRadius: 15,
//                       offset: const Offset(0, -5),
//                     )
//                   ],
//                 ),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Name
//                       Text("Name", style: textTheme.labelMedium),
//                       SizedBox(height: 1.h),
//                       TextField(
//                         controller: nameController,
//                         decoration: _buildInputDecoration("Enter your name"),
//                       ),
//                       SizedBox(height: 2.h),

//                       // Email
//                       Text("Email", style: textTheme.labelMedium),
//                       SizedBox(height: 1.h),
//                       TextField(
//                         controller: emailController,
//                         keyboardType: TextInputType.emailAddress,
//                         decoration: _buildInputDecoration("Enter your email"),
//                       ),
//                       SizedBox(height: 2.h),

//                       // Password
//                       Text("Password", style: textTheme.labelMedium),
//                       SizedBox(height: 1.h),
//                       TextField(
//                         controller: passwordController,
//                         obscureText: obscurePassword,
//                         decoration:
//                             _buildInputDecoration("Create a password").copyWith(
//                           suffixIcon: IconButton(
//                             icon: Icon(
//                               obscurePassword
//                                   ? Icons.visibility_off
//                                   : Icons.visibility,
//                               color: AppColors.textLight,
//                             ),
//                             onPressed: () {
//                               setState(() {
//                                 obscurePassword = !obscurePassword;
//                               });
//                             },
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 4.h),

//                       // Create Account Button
//                       SizedBox(
//                         width: double.infinity,
//                         height: 6.h,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) =>
//                                       const HotelBookingWelcome()),
//                             );
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: AppColors.primary2,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                             elevation: 5,
//                           ),
//                           child: Text(
//                             "Create Account",
//                             style: textTheme.bodyLarge?.copyWith(
//                               color: AppColors.container,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16.sp,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 3.h),
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
// }

// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart'; // Add this
// import 'package:newroombooking/HotelBookingWelcome.dart';
// import 'package:newroombooking/theme.dart';
// import 'package:sizer/sizer.dart';

// class CreateAccountScreen extends StatefulWidget {
//   const CreateAccountScreen({super.key});

//   @override
//   State<CreateAccountScreen> createState() => _CreateAccountScreenState();
// }

// class _CreateAccountScreenState extends State<CreateAccountScreen> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   bool obscurePassword = true;

//   @override
//   void dispose() {
//     nameController.dispose();
//     emailController.dispose();
//     passwordController.dispose();
//     super.dispose();
//   }

//   InputDecoration _buildInputDecoration(String hint) {
//     return InputDecoration(
//       hintText: hint,
//       hintStyle: Theme.of(context)
//           .textTheme
//           .bodyMedium
//           ?.copyWith(color: AppColors.textLight),
//       filled: true,
//       fillColor: AppColors.container,
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(15),
//         borderSide: BorderSide.none,
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(15),
//         borderSide: const BorderSide(color: AppColors.primary2, width: 2),
//       ),
//       contentPadding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
//     );
//   }

//   void _createAccount() {
//     String name = nameController.text.trim();
//     String email = emailController.text.trim();
//     String password = passwordController.text.trim();

//     if (name.isEmpty) {
//       Fluttertoast.showToast(
//         msg: "Please enter your name",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         backgroundColor: Colors.red,
//         textColor: Colors.white,
//       );
//       return;
//     }

//     if (email.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
//       Fluttertoast.showToast(
//         msg: "Please enter a valid email",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         backgroundColor: Colors.red,
//         textColor: Colors.white,
//       );
//       return;
//     }

//     if (password.isEmpty || password.length < 6) {
//       Fluttertoast.showToast(
//         msg: "Password must be at least 6 characters",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         backgroundColor: Colors.red,
//         textColor: Colors.white,
//       );
//       return;
//     }

//     // Navigate if all validations pass
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => const HotelBookingWelcome()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;

//     return Scaffold(
//       backgroundColor: AppColors.background,
//       body: SafeArea(
//         child: Column(
//           children: [
//             // Header with Network Image and Gradient Overlay
//             Stack(
//               children: [
//                 Container(
//                   height: 40.h,
//                   width: double.infinity,
//                   child: Image.network(
//                     'https://lh3.googleusercontent.com/aida-public/AB6AXuAFlwVEipjMGkvA6rtt47HJtlF9ECWHfx2fu4rqzxP9eBgtY3PJmg2fJe39XNBAJQCbKg8BUyHCGdh6GzQ-Yh7YB5-aahTtiZguY3oChPv_jiaB-E4ZTNLC8a2VRoKuCBNMeHeL6912EYi1jamchCrXKSc1fOhjK2vEjbqmRvGE17LR0HRGsFI1WW2MtftRNSNoXvFFhrDWoqg44q7ngCseZfsFLdr5x97qKwanf6e6M1JEeqf12DUwOwiJfLlOkDzjh5q8wzBmHI0',
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Container(
//                   height: 40.h,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [
//                         Colors.black.withOpacity(0.2),
//                         Colors.transparent
//                       ],
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 2.h,
//                   left: 4.w,
//                   right: 4.w,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       CircleAvatar(
//                         backgroundColor: Colors.white.withOpacity(0.3),
//                         child: IconButton(
//                           onPressed: () => Navigator.pop(context),
//                           icon: const Icon(Icons.arrow_back),
//                           color: AppColors.container,
//                         ),
//                       ),
//                       Text(
//                         "Create Account",
//                         style: textTheme.titleLarge?.copyWith(
//                             color: AppColors.container,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(width: 48),
//                     ],
//                   ),
//                 ),
//               ],
//             ),

//             // Form
//             Expanded(
//               child: Container(
//                 width: double.infinity,
//                 padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
//                 decoration: BoxDecoration(
//                   color: AppColors.background,
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(35),
//                     topRight: Radius.circular(35),
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.05),
//                       blurRadius: 15,
//                       offset: const Offset(0, -5),
//                     )
//                   ],
//                 ),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("Name", style: textTheme.labelMedium),
//                       SizedBox(height: 1.h),
//                       TextField(
//                         controller: nameController,
//                         decoration: _buildInputDecoration("Enter your name"),
//                       ),
//                       SizedBox(height: 2.h),

//                       Text("Email", style: textTheme.labelMedium),
//                       SizedBox(height: 1.h),
//                       TextField(
//                         controller: emailController,
//                         keyboardType: TextInputType.emailAddress,
//                         decoration: _buildInputDecoration("Enter your email"),
//                       ),
//                       SizedBox(height: 2.h),

//                       Text("Password", style: textTheme.labelMedium),
//                       SizedBox(height: 1.h),
//                       TextField(
//                         controller: passwordController,
//                         obscureText: obscurePassword,
//                         decoration:
//                             _buildInputDecoration("Create a password").copyWith(
//                           suffixIcon: IconButton(
//                             icon: Icon(
//                               obscurePassword
//                                   ? Icons.visibility_off
//                                   : Icons.visibility,
//                               color: AppColors.textLight,
//                             ),
//                             onPressed: () {
//                               setState(() {
//                                 obscurePassword = !obscurePassword;
//                               });
//                             },
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 4.h),

//                       SizedBox(
//                         width: double.infinity,
//                         height: 6.h,
//                         child: ElevatedButton(
//                           onPressed: _createAccount, // Validation function
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: AppColors.primary2,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                             elevation: 5,
//                           ),
//                           child: Text(
//                             "Create Account",
//                             style: textTheme.bodyLarge?.copyWith(
//                               color: AppColors.container,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16.sp,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 3.h),
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
// }



//---------------new code ---------------//
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:newroombooking/HotelBookingWelcome.dart';
// import 'package:newroombooking/theme.dart';
// import 'package:sizer/sizer.dart';

// class CreateAccountScreen extends StatefulWidget {
//   const CreateAccountScreen({super.key});

//   @override
//   State<CreateAccountScreen> createState() => _CreateAccountScreenState();
// }

// class _CreateAccountScreenState extends State<CreateAccountScreen> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   bool obscurePassword = true;

//   final List<String> bgImages = [
//     "https://lh3.googleusercontent.com/aida-public/AB6AXuAbceWUbt2SiWY9wIMC8JTqHG-BzLs2uiKEDYikVS7BZX5BkdOh3Nrh2CzSud-CKFlh9VTS73c3XYVcdpd7jLlQtQeb2FrSHctwyRLO3U1kMC2ZCWObx4CxOOmajsKsOGsvF7M6ch9qOW-yAPcBFSMPElmF2B9svy1Ger3IAR3HN42agbywHRY6KXRQYYTbBn8kMrRHpgoP1ymyUfwmForxsHskrSfKWzwOE9haybSOMmIu4sQiSOcN88_2A0irITGZMup-7nAZKO4",
//     "https://lh3.googleusercontent.com/aida-public/AB6AXuAqzhUEJlZ9Yg7eOj9QYNsMFEkaYryzrvN_x_CChkc1oaaAxNrzHWgHHN6pI7Yf46qr0niu2Mxv64WSf0jkxdSbKnjSjGgR5OXQEjIOPLlHTyvzniDb7hVzqB1onNsTkMlIdRSK1ckKbu_orOk8ZZ5pPJo9CQi1BvlGiwffv02hPHIxKgZzV0ZhYk9n8HOvjq5hh72uGvzq27y62YSf-GwdpOHQdEjKvr1sSht-exrHZNd62XfyQY4S7gZ381berS1FAF3FNyDRAQU",
//     "https://lh3.googleusercontent.com/aida-public/AB6AXuAFlwVEipjMGkvA6rtt47HJtlF9ECWHfx2fu4rqzxP9eBgtY3PJmg2fJe39XNBAJQCbKg8BUyHCGdh6GzQ-Yh7YB5-aahTtiZguY3oChPv_jiaB-E4ZTNLC8a2VRoKuCBNMeHeL6912EYi1jamchCrXKSc1fOhjK2vEjbqmRvGE17LR0HRGsFI1WW2MtftRNSNoXvFFhrDWoqg44q7ngCseZfsFLdr5x97qKwanf6e6M1JEeqf12DUwOwiJfLlOkDzjh5q8wzBmHI0",
//     "https://lh3.googleusercontent.com/aida-public/AB6AXuB0zds5e12yrln94NDdkmBbrikw6QXb7Klj1QjqfvZS18mlb3FTOXtL0jdQo2CBN9NWNYdGICekF12nQ3cnaSaXlmmwKMfEL-r_4GjGGJC4WyhDLiOUP4qHx7q280Xlt-5ZTCBn9CW2qQ242GWkuNu7vBHAI9687akaTcATkUj_zcQmjDVhaejxtbRZeb-Lj1Dx65GtUIVwlbT3wt3z5DNfKJXZ98JZiLxr59DrAsdlm5HFeJL0lIAkvUO3IznkmUZM7g8RgO5-MKE",
//   ];

//   int currentImage = 0;
//   int nextImage = 1;
//   double opacity = 1.0;
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();
//     _timer = Timer.periodic(const Duration(seconds: 5), (_) {
//       setState(() {
//         currentImage = nextImage;
//         nextImage = (nextImage + 1) % bgImages.length;
//         opacity = 0.0;
//       });

//       // Fade in
//       Future.delayed(const Duration(milliseconds: 50), () {
//         setState(() {
//           opacity = 1.0;
//         });
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     nameController.dispose();
//     emailController.dispose();
//     passwordController.dispose();
//     super.dispose();
//   }

//   void _createAccount() {
//     String name = nameController.text.trim();
//     String email = emailController.text.trim();
//     String password = passwordController.text.trim();

//     if (name.isEmpty) {
//       Fluttertoast.showToast(
//           msg: "Please enter your name",
//           backgroundColor: Colors.red,
//           textColor: Colors.white);
//       return;
//     }
//     if (email.isEmpty ||
//         !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
//       Fluttertoast.showToast(
//           msg: "Please enter a valid email",
//           backgroundColor: Colors.red,
//           textColor: Colors.white);
//       return;
//     }
//     if (password.isEmpty || password.length < 6) {
//       Fluttertoast.showToast(
//           msg: "Password must be at least 6 characters",
//           backgroundColor: Colors.red,
//           textColor: Colors.white);
//       return;
//     }

//     Navigator.push(context,
//         MaterialPageRoute(builder: (_) => const HotelBookingWelcome()));
//   }

//   InputDecoration _buildInputDecoration(String hint) {
//     return InputDecoration(
//       hintText: hint,
//       hintStyle: TextStyle(color: AppColors.textLight),
//       filled: true,
//       fillColor: AppColors.container,
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(15),
//         borderSide: BorderSide.none,
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(15),
//         borderSide: const BorderSide(color: AppColors.primary2, width: 2),
//       ),
//       contentPadding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;

//     return Sizer(
//       builder: (context, orientation, deviceType) {
//         return Scaffold(
//           body: Stack(
//             children: [
//               // Fullscreen background images with fade
//               Positioned.fill(
//                 child: Stack(
//                   children: [
//                     Image.network(bgImages[currentImage],
//                         fit: BoxFit.cover, width: 100.w, height: 100.h),
//                     AnimatedOpacity(
//                       opacity: opacity,
//                       duration: const Duration(seconds: 1),
//                       child: Image.network(bgImages[nextImage],
//                           fit: BoxFit.cover, width: 100.w, height: 100.h),
//                     ),
//                   ],
//                 ),
//               ),
//               // Dark overlay
//               Container(color: Colors.black.withOpacity(0.3)),
//               // Centered form card
//               Center(
//                 child: Card(
//                   elevation: 8,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(25)),
//                   margin: EdgeInsets.symmetric(horizontal: 5.w),
//                   child: Padding(
//                     padding:
//                         EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
//                     child: SingleChildScrollView(
//                       child: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text("Create Account",
//                               style: textTheme.titleLarge
//                                   ?.copyWith(fontWeight: FontWeight.bold)),
//                           SizedBox(height: 3.h),
//                           TextField(
//                               controller: nameController,
//                               decoration: _buildInputDecoration("Name")),
//                           SizedBox(height: 2.h),
//                           TextField(
//                               controller: emailController,
//                               keyboardType: TextInputType.emailAddress,
//                               decoration: _buildInputDecoration("Email")),
//                           SizedBox(height: 2.h),
//                           TextField(
//                             controller: passwordController,
//                             obscureText: obscurePassword,
//                             decoration:
//                                 _buildInputDecoration("Password").copyWith(
//                               suffixIcon: IconButton(
//                                 icon: Icon(
//                                     obscurePassword
//                                         ? Icons.visibility_off
//                                         : Icons.visibility,
//                                     color: AppColors.textLight),
//                                 onPressed: () => setState(
//                                     () => obscurePassword = !obscurePassword),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 4.h),
//                           SizedBox(
//                             width: double.infinity,
//                             height: 6.h,
//                             child: ElevatedButton(
//                               onPressed: _createAccount,
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: AppColors.primary2,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(15)),
//                               ),
//                               child: Text("Create Account",
//                                   style: textTheme.bodyLarge?.copyWith(
//                                       color: AppColors.container,
//                                       fontWeight: FontWeight.bold)),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }



//-----------------------new with trasaction ---------------//
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:newroombooking/location.dart';
import 'package:newroombooking/theme.dart';
import 'package:sizer/sizer.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen>
    with SingleTickerProviderStateMixin {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;

  final List<String> bgImages = [
    "https://lh3.googleusercontent.com/aida-public/AB6AXuAbceWUbt2SiWY9wIMC8JTqHG-BzLs2uiKEDYikVS7BZX5BkdOh3Nrh2CzSud-CKFlh9VTS73c3XYVcdpd7jLlQtQeb2FrSHctwyRLO3U1kMC2ZCWObx4CxOOmajsKsOGsvF7M6ch9qOW-yAPcBFSMPElmF2B9svy1Ger3IAR3HN42agbywHRY6KXRQYYTbBn8kMrRHpgoP1ymyUfwmForxsHskrSfKWzwOE9haybSOMmIu4sQiSOcN88_2A0irITGZMup-7nAZKO4",
    "https://lh3.googleusercontent.com/aida-public/AB6AXuAqzhUEJlZ9Yg7eOj9QYNsMFEkaYryzrvN_x_CChkc1oaaAxNrzHWgHHN6pI7Yf46qr0niu2Mxv64WSf0jkxdSbKnjSjGgR5OXQEjIOPLlHTyvzniDb7hVzqB1onNsTkMlIdRSK1ckKbu_orOk8ZZ5pPJo9CQi1BvlGiwffv02hPHIxKgZzV0ZhYk9n8HOvjq5hh72uGvzq27y62YSf-GwdpOHQdEjKvr1sSht-exrHZNd62XfyQY4S7gZ381berS1FAF3FNyDRAQU",
    "https://lh3.googleusercontent.com/aida-public/AB6AXuAFlwVEipjMGkvA6rtt47HJtlF9ECWHfx2fu4rqzxP9eBgtY3PJmg2fJe39XNBAJQCbKg8BUyHCGdh6GzQ-Yh7YB5-aahTtiZguY3oChPv_jiaB-E4ZTNLC8a2VRoKuCBNMeHeL6912EYi1jamchCrXKSc1fOhjK2vEjbqmRvGE17LR0HRGsFI1WW2MtftRNSNoXvFFhrDWoqg44q7ngCseZfsFLdr5x97qKwanf6e6M1JEeqf12DUwOwiJfLlOkDzjh5q8wzBmHI0",
    "https://lh3.googleusercontent.com/aida-public/AB6AXuB0zds5e12yrln94NDdkmBbrikw6QXb7Klj1QjqfvZS18mlb3FTOXtL0jdQo2CBN9NWNYdGICekF12nQ3cnaSaXlmmwKMfEL-r_4GjGGJC4WyhDLiOUP4qHx7q280Xlt-5ZTCBn9CW2qQ242GWkuNu7vBHAI9687akaTcATkUj_zcQmjDVhaejxtbRZeb-Lj1Dx65GtUIVwlbT3wt3z5DNfKJXZ98JZiLxr59DrAsdlm5HFeJL0lIAkvUO3IznkmUZM7g8RgO5-MKE",
  ];

  int currentIndex = 0;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _fadeAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    _animationController.forward();

    _timer = Timer.periodic(const Duration(seconds: 5), (_) {
      _animationController.reverse().then((value) {
        setState(() {
          currentIndex = (currentIndex + 1) % bgImages.length;
        });
        _animationController.forward();
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _animationController.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _createAccount() {
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (name.isEmpty) {
      Fluttertoast.showToast(
          msg: "Please enter your name",
          backgroundColor: Colors.red,
          textColor: Colors.white);
      return;
    }
    if (email.isEmpty ||
        !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
      Fluttertoast.showToast(
          msg: "Please enter a valid email",
          backgroundColor: Colors.red,
          textColor: Colors.white);
      return;
    }
    if (password.isEmpty || password.length < 6) {
      Fluttertoast.showToast(
          msg: "Password must be at least 6 characters",
          backgroundColor: Colors.red,
          textColor: Colors.white);
      return;
    }

    Navigator.push(context,
        MaterialPageRoute(builder: (_) => const HotelBookingWelcome()));
  }

  InputDecoration _buildInputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(color: AppColors.textLight),
      filled: true,
      fillColor: AppColors.container,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: AppColors.primary2, width: 2),
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          body: Stack(
            children: [
              // Fullscreen background with fade animation
              Positioned.fill(
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: Image.network(
                    bgImages[currentIndex],
                    fit: BoxFit.cover,
                    width: 100.w,
                    height: 100.h,
                  ),
                ),
              ),
              // Overlay for readability
              Container(color: Colors.black.withOpacity(0.3)),
              // Centered card
              Center(
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Create Account",
                              style: textTheme.titleLarge
                                  ?.copyWith(fontWeight: FontWeight.bold)),
                          SizedBox(height: 3.h),
                          TextField(
                              controller: nameController,
                              decoration: _buildInputDecoration("Name")),
                          SizedBox(height: 2.h),
                          TextField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: _buildInputDecoration("Email")),
                          SizedBox(height: 2.h),
                          TextField(
                            controller: passwordController,
                            obscureText: obscurePassword,
                            decoration:
                                _buildInputDecoration("Password").copyWith(
                              suffixIcon: IconButton(
                                icon: Icon(
                                    obscurePassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: AppColors.textLight),
                                onPressed: () => setState(
                                    () => obscurePassword = !obscurePassword),
                              ),
                            ),
                          ),
                          SizedBox(height: 4.h),
                          SizedBox(
                            width: double.infinity,
                            height: 6.h,
                            child: ElevatedButton(
                              onPressed: _createAccount,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              child: Text("Create Account",
                                  style: textTheme.bodyLarge?.copyWith(
                                      color: AppColors.container,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
