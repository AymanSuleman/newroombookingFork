

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:newroombooking/VerifyPhoneNumber.dart';
import 'package:newroombooking/theme.dart';
import 'package:sizer/sizer.dart';

class PhoneInputScreen extends StatefulWidget {
  const PhoneInputScreen({super.key});

  @override
  State<PhoneInputScreen> createState() => _PhoneInputScreenState();
}

class _PhoneInputScreenState extends State<PhoneInputScreen>
    with TickerProviderStateMixin {
  final TextEditingController phoneController = TextEditingController();

  late final AnimationController _waveController;
  late final Animation<double> _waveAnimation;

  late final AnimationController _circleController;

  @override
  void initState() {
    super.initState();

    // Wave animation
    _waveController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
    _waveAnimation =
        Tween<double>(begin: 0, end: 2.h).animate(CurvedAnimation(
      parent: _waveController,
      curve: Curves.easeInOut,
    ));

    // Circle floating animation
    _circleController =
        AnimationController(vsync: this, duration: const Duration(seconds: 6))
          ..repeat(reverse: true);
  }

  @override
  void dispose() {
    phoneController.dispose();
    _waveController.dispose();
    _circleController.dispose();
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
      );
      return;
    }

    if (phone.length != 10 || !RegExp(r'^[0-9]+$').hasMatch(phone)) {
      Fluttertoast.showToast(
        msg: "Please enter a valid 10-digit phone number",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
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

    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F8),
      body: Stack(
        children: [
          // Animated circular background
          AnimatedBuilder(
            animation: _circleController,
            builder: (context, child) {
              return CustomPaint(
                painter: CircleBackgroundPainter(_circleController.value),
                child: Container(),
              );
            },
          ),

          // Top wave
          AnimatedBuilder(
            animation: _waveController,
            builder: (context, child) {
              return ClipPath(
                clipper: WaveClipper(_waveAnimation.value, isTop: true),
                child: Container(
                  height: 20.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.primary2,
                        AppColors.primary.withOpacity(0.7),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              );
            },
          ),

          // Bottom wave
          AnimatedBuilder(
            animation: _waveController,
            builder: (context, child) {
              return Align(
                alignment: Alignment.bottomCenter,
                child: ClipPath(
                  clipper: WaveClipper(_waveAnimation.value, isTop: false),
                  child: Container(
                    height: 15.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.primary.withOpacity(0.7),
                          AppColors.primary2,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),

          // Main content card
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(6.w),
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.w),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(6.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.phone_iphone, size: 16.w, color: primary),
                        SizedBox(height: 2.h),
                        Text(
                          "Enter your phone number",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(color: AppColors.textDark, fontSize: 18.sp),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          "We'll send you a 6-digit OTP to verify.",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: AppColors.textLight, fontSize: 12.sp),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 3.h),
                        TextField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          maxLength: 10,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(),
                          decoration: InputDecoration(
                            counterText: '',
                            hintText: "Enter your phone number",
                            hintStyle: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: Colors.grey.shade600,fontSize: 14.sp ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.w),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.9),
                            prefixIcon: Icon(Icons.phone, color: primary, size: 6.w),
                          ),
                        ),
                        SizedBox(height: 3.h),
                        SizedBox(
                          width: double.infinity,
                          height: 7.h,
                          child: ElevatedButton(
                            onPressed: _sendOtp,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.w),
                              ),
                            ),
                            child: Text(
                              "Send OTP",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(color: Colors.white, fontSize: 14.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------- Wave Clipper ----------------
class WaveClipper extends CustomClipper<Path> {
  final double waveHeight;
  final bool isTop;
  WaveClipper(this.waveHeight, {this.isTop = true});

  @override
  Path getClip(Size size) {
    Path path = Path();
    if (isTop) {
      path.lineTo(0, size.height - waveHeight);
      path.quadraticBezierTo(size.width * 0.25, size.height + waveHeight,
          size.width * 0.5, size.height - waveHeight);
      path.quadraticBezierTo(size.width * 0.75, size.height - 3 * waveHeight,
          size.width, size.height - waveHeight);
      path.lineTo(size.width, 0);
    } else {
      path.moveTo(0, waveHeight);
      path.quadraticBezierTo(
          size.width * 0.25, -waveHeight, size.width * 0.5, waveHeight);
      path.quadraticBezierTo(
          size.width * 0.75, 3 * waveHeight, size.width, waveHeight);
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant WaveClipper oldClipper) => true;
}

// ---------------- Animated Circular Background ----------------
class CircleBackgroundPainter extends CustomPainter {
  final double animationValue;
  CircleBackgroundPainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppColors.primary2.withOpacity(0.1)
      ..style = PaintingStyle.fill;

    double shift = 20 * animationValue;

    canvas.drawCircle(
        Offset(size.width * 0.2, size.height * 0.3 + shift), 10.h, paint);
    canvas.drawCircle(
        Offset(size.width * 0.7, size.height * 0.2 - shift), 15.h, paint);
    canvas.drawCircle(
        Offset(size.width * 0.5, size.height * 0.7 + shift / 2), 12.h, paint);
    canvas.drawCircle(
        Offset(size.width * 0.8, size.height * 0.8 - shift / 2), 8.h, paint);
    canvas.drawCircle(
        Offset(size.width * 0.3, size.height * 0.8 + shift / 3), 6.h, paint);

    Paint gradientPaint = Paint()
      ..shader = RadialGradient(
        colors: [
          AppColors.primary.withOpacity(0.05),
          Colors.transparent,
        ],
      ).createShader(Rect.fromCircle(
          center: Offset(size.width * 0.6, size.height * 0.5), radius: 18.h));

    canvas.drawCircle(
        Offset(size.width * 0.6, size.height * 0.5), 18.h, gradientPaint);
  }

  @override
  bool shouldRepaint(covariant CircleBackgroundPainter oldDelegate) => true;
}
