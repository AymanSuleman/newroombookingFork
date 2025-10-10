import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
  final List<FocusNode> focusNodes = List.generate(6, (_) => FocusNode());
  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    for (var controller in otpControllers) {
      controller.addListener(_checkOtpFilled);
    }
  }

  void _checkOtpFilled() {
    bool allFilled = otpControllers.every((c) => c.text.trim().isNotEmpty);
    if (allFilled != isButtonEnabled) {
      setState(() {
        isButtonEnabled = allFilled;
      });
    }
  }

  @override
  void dispose() {
    for (var controller in otpControllers) {
      controller.dispose();
    }
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _verifyOtp() {
    String otp = otpControllers.map((e) => e.text.trim()).join();
    if (otp.length < 6) {
      Fluttertoast.showToast(
        msg: "Please enter the complete 6-digit OTP",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: AppColors.primary2,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const CreateAccountScreen(),
      ),
    );
  }

  Widget _buildOtpFields() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(6, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 1.w),
          width: 12.w,
          height: 14.h,
          child: TextField(
            controller: otpControllers[index],
            focusNode: focusNodes[index],
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
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onChanged: (val) {
              if (val.isNotEmpty && index < 5) {
                FocusScope.of(context).requestFocus(focusNodes[index + 1]);
              }
            },
          ),
        );
      }),
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
              // Wrap OTP fields with RawKeyboardListener for backspace
              RawKeyboardListener(
                focusNode: FocusNode(),
                onKey: (event) {
                  if (event is RawKeyDownEvent &&
                      event.logicalKey == LogicalKeyboardKey.backspace) {
                    for (int i = 5; i >= 0; i--) {
                      if (otpControllers[i].text.isNotEmpty) {
                        otpControllers[i].clear();
                        FocusScope.of(context).requestFocus(focusNodes[i]);
                        break;
                      }
                    }
                  }
                },
                child: _buildOtpFields(),
              ),
              SizedBox(height: 3.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: isButtonEnabled ? _verifyOtp : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isButtonEnabled ? AppColors.primary2 : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
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

