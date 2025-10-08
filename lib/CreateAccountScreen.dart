// import 'package:flutter/material.dart';
// import 'package:newroombooking/HotelBookingWelcome.dart';
// import 'package:newroombooking/theme.dart';

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

//   @override
//   Widget build(BuildContext context) {
//       const Color textLight = Color(0xFF101c22);
//     const Color subtleLight = Color(0xFFE5E7EB);
//     const Color placeholderLight = Color(0xFF6B7280);

//     return Scaffold(
//       backgroundColor: const Color(0xFFF6F7F8), // background-light
//       body: SafeArea(
//         child: Column(
//           children: [
//             // Header
//             Container(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//               decoration: const BoxDecoration(
//                 border: Border(
//                   bottom: BorderSide(color: subtleLight),
//                 ),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconButton(
//                     onPressed: () => Navigator.pop(context),
//                     icon: const Icon(Icons.arrow_back),
//                     color: textLight,
//                   ),
//                   const Expanded(
//                     child: Text(
//                       "Create account",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: textLight,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 32), // placeholder for alignment
//                 ],
//               ),
//             ),

//             // Form
//             Expanded(
//               child: SingleChildScrollView(
//                 padding: const EdgeInsets.all(24),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Name
//                     const Text(
//                       "Name",
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w500,
//                         color: textLight,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     TextField(
//                       controller: nameController,
//                       decoration: InputDecoration(
//                         hintText: "Enter your name",
//                         hintStyle: const TextStyle(color: placeholderLight),
//                         filled: true,
//                         fillColor: subtleLight,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: const BorderSide(
//                               color: AppColors.primary2, width: 2),
//                         ),
//                         contentPadding: const EdgeInsets.symmetric(
//                           vertical: 16,
//                           horizontal: 16,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 24),

//                     // Email
//                     const Text(
//                       "Email",
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w500,
//                         color: textLight,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     TextField(
//                       controller: emailController,
//                       keyboardType: TextInputType.emailAddress,
//                       decoration: InputDecoration(
//                         hintText: "Enter your email",
//                         hintStyle: const TextStyle(color: placeholderLight),
//                         filled: true,
//                         fillColor: subtleLight,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: const BorderSide(
//                               color: AppColors.primary2, width: 2),
//                         ),
//                         contentPadding: const EdgeInsets.symmetric(
//                           vertical: 16,
//                           horizontal: 16,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 24),

//                     // Password
//                     const Text(
//                       "Password",
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w500,
//                         color: textLight,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     TextField(
//                       controller: passwordController,
//                       obscureText: obscurePassword,
//                       decoration: InputDecoration(
//                         hintText: "Create a password",
//                         hintStyle: const TextStyle(color: placeholderLight),
//                         filled: true,
//                         fillColor: subtleLight,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: const BorderSide(
//                               color: AppColors.primary2, width: 2),
//                         ),
//                         contentPadding: const EdgeInsets.symmetric(
//                           vertical: 16,
//                           horizontal: 16,
//                         ),
//                         suffixIcon: IconButton(
//                           icon: Icon(
//                             obscurePassword
//                                 ? Icons.visibility_off
//                                 : Icons.visibility,
//                             color: placeholderLight,
//                           ),
//                           onPressed: () {
//                             setState(() {
//                               obscurePassword = !obscurePassword;
//                             });
//                           },
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             // Footer Button
//             Padding(
//               padding: const EdgeInsets.all(24),
//               child: SizedBox(
//                 width: double.infinity,
//                 height: 48,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // TODO: Create account logic
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => HotelBookingWelcome(),
//                         ));
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: AppColors.primary2,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                   child: const Text(
//                     "Create account",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                       color: Colors.white,
//                     ),
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

import 'package:flutter/material.dart';
import 'package:newroombooking/HotelBookingWelcome.dart';
import 'package:newroombooking/theme.dart';
import 'package:sizer/sizer.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  InputDecoration _buildInputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(color: AppColors.textLight),
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

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            // Header with Network Image and Gradient Overlay
            Stack(
              children: [
                // Header Image
                Container(
                  height: 40.h,
                  width: double.infinity,
                  child: Image.network(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuAFlwVEipjMGkvA6rtt47HJtlF9ECWHfx2fu4rqzxP9eBgtY3PJmg2fJe39XNBAJQCbKg8BUyHCGdh6GzQ-Yh7YB5-aahTtiZguY3oChPv_jiaB-E4ZTNLC8a2VRoKuCBNMeHeL6912EYi1jamchCrXKSc1fOhjK2vEjbqmRvGE17LR0HRGsFI1WW2MtftRNSNoXvFFhrDWoqg44q7ngCseZfsFLdr5x97qKwanf6e6M1JEeqf12DUwOwiJfLlOkDzjh5q8wzBmHI0',
                    fit: BoxFit.cover,
                  ),
                ),

                // Gradient overlay (optional for better contrast)
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.2),
                        Colors.transparent
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                // Back button & Title
                Positioned(
                  top: 2.h,
                  left: 4.w,
                  right: 4.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white.withOpacity(0.3),
                        child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.arrow_back),
                          color: AppColors.container,
                        ),
                      ),
                      Text(
                        "Create Account",
                        style: textTheme.titleLarge?.copyWith(
                            color: AppColors.container,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 48), // placeholder
                    ],
                  ),
                ),
              ],
            ),

            // Form
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 15,
                      offset: const Offset(0, -5),
                    )
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Name
                      Text("Name", style: textTheme.labelMedium),
                      SizedBox(height: 1.h),
                      TextField(
                        controller: nameController,
                        decoration: _buildInputDecoration("Enter your name"),
                      ),
                      SizedBox(height: 2.h),

                      // Email
                      Text("Email", style: textTheme.labelMedium),
                      SizedBox(height: 1.h),
                      TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: _buildInputDecoration("Enter your email"),
                      ),
                      SizedBox(height: 2.h),

                      // Password
                      Text("Password", style: textTheme.labelMedium),
                      SizedBox(height: 1.h),
                      TextField(
                        controller: passwordController,
                        obscureText: obscurePassword,
                        decoration:
                            _buildInputDecoration("Create a password").copyWith(
                          suffixIcon: IconButton(
                            icon: Icon(
                              obscurePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: AppColors.textLight,
                            ),
                            onPressed: () {
                              setState(() {
                                obscurePassword = !obscurePassword;
                              });
                            },
                          ),
                        ),
                      ),

                      SizedBox(height: 4.h),

                      // Create Account Button
                      SizedBox(
                        width: double.infinity,
                        height: 6.h,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const HotelBookingWelcome()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 5,
                          ),
                          child: Text(
                            "Create Account",
                            style: textTheme.bodyLarge?.copyWith(
                              color: AppColors.container,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 3.h),
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
}
