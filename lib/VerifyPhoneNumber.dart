

//------------using sizer for reponsive------------------------------//

import 'package:flutter/material.dart';
import 'package:newroombooking/CreateAccountScreen.dart';
import 'package:newroombooking/theme.dart';
import 'package:sizer/sizer.dart';

class OtpVerifyScreen extends StatefulWidget {
  final String phoneNumber;
  const OtpVerifyScreen({super.key, required this.phoneNumber});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  final List<TextEditingController> otpControllers =
      List.generate(6, (_) => TextEditingController());

  @override
  void dispose() {
    for (var c in otpControllers) c.dispose();
    super.dispose();
  }

  Widget _buildOtpFields() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        6,
        (index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 1.w),
          width: 12.w,
          height: 14.h,
          child: TextField(
            controller: otpControllers[index],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: 20.sp),
            decoration: InputDecoration(
              counterText: "",
              filled: true,
              fillColor: const Color(0xFFE2E8F0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.w),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.w),
                borderSide:
                    const BorderSide(color: AppColors.primary2, width: 2),
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
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(6.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 3.h),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Verify your phone number",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      "We sent an OTP to ${widget.phoneNumber}",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3.h),
              _buildOtpFields(),
              // SizedBox(height: 3.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CreateAccountScreen(),
                      ),
                    );
                  },
                  child: const Text("Verify"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
