import 'package:flutter/material.dart';
import 'package:newroombooking/CreateAccountScreen.dart';
import 'package:newroombooking/theme.dart';

class VerifyPhoneScreen extends StatefulWidget {
  const VerifyPhoneScreen({super.key});

  @override
  State<VerifyPhoneScreen> createState() => _VerifyPhoneScreenState();
}

class _VerifyPhoneScreenState extends State<VerifyPhoneScreen> {
  final TextEditingController phoneController = TextEditingController();
  final List<TextEditingController> otpControllers =
      List.generate(6, (_) => TextEditingController());

  @override
  void dispose() {
    phoneController.dispose();
    for (var c in otpControllers) {
      c.dispose();
    }
    super.dispose();
  }

  Widget _buildOtpFields() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        6,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: 48,
          height: 56,
          child: TextField(
            controller: otpControllers[index],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              counterText: "",
              filled: true,
              fillColor: const Color(0xFFE2E8F0), // input-light
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: AppColors.primary2, // primary
                  width: 2,
                ),
              ),
            ),
            onChanged: (val) {
              if (val.isNotEmpty && index < 5) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const Color primary = AppColors.primary2;
    const Color textLight = Color(0xFF0f172a);
    const Color subtextLight = Color(0xFF64748b);
    const Color inputLight = Color(0xFFE2E8F0);

    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F8), // background-light
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button

              const SizedBox(height: 40),

              // Title
              Center(
                child: Column(
                  children: [
                    const Text(
                      "Verify your phone number",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: textLight,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "We'll send you a 6-digit code to verify your phone number.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: subtextLight,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // Phone Input + Send OTP Button
              Stack(
                children: [
                  TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Enter your phone number",
                      filled: true,
                      fillColor: inputLight,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 16,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: handle send OTP
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primary,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                      ),
                      child: const Text(
                        "Send OTP",
                        style: TextStyle(
                          color: AppColors.container,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 32),

              // OTP Input
              _buildOtpFields(),

              const SizedBox(height: 32),

              // Verify Button
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: verify logic
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateAccountScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Verify",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const Spacer(),

              // Footer
              Center(
                child: Text.rich(
                  TextSpan(
                    text: "By continuing, you agree to our ",
                    style: const TextStyle(fontSize: 12, color: subtextLight),
                    children: [
                      TextSpan(
                        text: "Terms of Service",
                        style: const TextStyle(
                          color: primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const TextSpan(text: " and "),
                      TextSpan(
                        text: "Privacy Policy",
                        style: const TextStyle(
                          color: primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
