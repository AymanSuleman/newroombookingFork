// import 'package:flutter/material.dart';
// import 'package:newroombooking/VerifyPhoneNumber.dart';
// import 'package:newroombooking/theme.dart';

// class PhoneInputScreen extends StatefulWidget {
//   const PhoneInputScreen({super.key});

//   @override
//   State<PhoneInputScreen> createState() => _PhoneInputScreenState();
// }

// class _PhoneInputScreenState extends State<PhoneInputScreen> {
//   final TextEditingController phoneController = TextEditingController();

//   @override
//   void dispose() {
//     phoneController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     const Color primary = AppColors.primary2;
//     const Color textLight = Color(0xFF0f172a);
//     const Color subtextLight = Color(0xFF64748b);
//     const Color inputLight = Color(0xFFE2E8F0);

//     return Scaffold(
//       backgroundColor: const Color(0xFFF6F7F8),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(24),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(height: 40),
//               Center(
//                 child: Column(
//                   children: [
//                     const Text(
//                       "Enter your phone number",
//                       style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                         color: textLight,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     const Text(
//                       "We'll send you a 6-digit OTP to verify.",
//                       style: TextStyle(fontSize: 14, color: subtextLight),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 40),
//               TextField(
//                 controller: phoneController,
//                 keyboardType: TextInputType.phone,
//                 decoration: InputDecoration(
//                   hintText: "Enter your phone number",
//                   filled: true,
//                   fillColor: inputLight,
//                   contentPadding:
//                       const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 32),
//               SizedBox(
//                 width: double.infinity,
//                 height: 48,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // TODO: handle OTP send here
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => OtpVerifyScreen(
//                           phoneNumber: phoneController.text,
//                         ),
//                       ),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: primary,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                   child: const Text(
//                     "Send OTP",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
//                   ),
//                 ),
//               ),
//               const Spacer(),
//               Center(
//                 child: Text.rich(
//                   TextSpan(
//                     text: "By continuing, you agree to our ",
//                     style: const TextStyle(fontSize: 12, color: subtextLight),
//                     children: [
//                       TextSpan(
//                         text: "Terms of Service",
//                         style: const TextStyle(
//                             color: primary, fontWeight: FontWeight.w500),
//                       ),
//                       const TextSpan(text: " and "),
//                       TextSpan(
//                         text: "Privacy Policy",
//                         style: const TextStyle(
//                             color: primary, fontWeight: FontWeight.w500),
//                       ),
//                     ],
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:newroombooking/VerifyPhoneNumber.dart';
import 'package:newroombooking/theme.dart';

class PhoneInputScreen extends StatefulWidget {
  const PhoneInputScreen({super.key});

  @override
  State<PhoneInputScreen> createState() => _PhoneInputScreenState();
}

class _PhoneInputScreenState extends State<PhoneInputScreen> {
  final TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color primary = AppColors.primary2;
    final Color inputLight = Color(0xFFE2E8F0);

    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Enter your phone number",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: AppColors.textDark),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "We'll send you a 6-digit OTP to verify.",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColors.textLight),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: InputDecoration(
                  hintText: "Enter your phone number",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColors.textLight),
                  filled: true,
                  fillColor: inputLight,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OtpVerifyScreen(
                          phoneNumber: phoneController.text,
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Send OTP",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ),
              const Spacer(),
              Center(
                child: Text.rich(
                  TextSpan(
                    text: "By continuing, you agree to our ",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: AppColors.textLight, fontSize: 12),
                    children: [
                      TextSpan(
                        text: "Terms of Service",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: primary, fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                      const TextSpan(text: " and "),
                      TextSpan(
                        text: "Privacy Policy",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: primary, fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
