import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart'; // Add this package
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

  void _sendOtp() {
    String phone = phoneController.text.trim();

    if (phone.isEmpty) {
      Fluttertoast.showToast(
          msg: "Phone number cannot be empty",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: AppColors.primary2,
          textColor: Colors.white,
          fontSize: 16.0);
      return;
    }

    if (phone.length != 10 || !RegExp(r'^[0-9]+$').hasMatch(phone)) {
      Fluttertoast.showToast(
          msg: "Please enter a valid 10-digit phone number",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OtpVerifyScreen(phoneNumber: phone),
      ),
    );
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
                maxLength: 10, // Limit input to 10 digits
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: InputDecoration(
                  counterText: '', // Hide the default counter
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
                  onPressed: _sendOtp, // Call validation method
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
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: primary,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                      const TextSpan(text: " and "),
                      TextSpan(
                        text: "Privacy Policy",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: primary,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
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
