
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

class _OtpVerifyScreenState extends State<OtpVerifyScreen>
    with TickerProviderStateMixin {
  final List<TextEditingController> otpControllers =
      List.generate(6, (_) => TextEditingController());
  final List<FocusNode> focusNodes = List.generate(6, (_) => FocusNode());
  bool isButtonEnabled = false;

  late final AnimationController _waveController;
  late final Animation<double> _waveAnimation;
  late final AnimationController _circleController;

  @override
  void initState() {
    super.initState();

    for (var controller in otpControllers) {
      controller.addListener(_checkOtpFilled);
    }

    _waveController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat(reverse: true);
    _waveAnimation = Tween<double>(begin: 0, end: 30).animate(CurvedAnimation(
      parent: _waveController,
      curve: Curves.easeInOut,
    ));

    _circleController =
        AnimationController(vsync: this, duration: const Duration(seconds: 8))
          ..repeat(reverse: true);
  }

  void _checkOtpFilled() {
    bool allFilled = otpControllers.every((c) => c.text.trim().isNotEmpty);
    if (allFilled != isButtonEnabled) {
      setState(() {
        isButtonEnabled = allFilled;
      });
    }
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w), // horizontal padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(6, (index) {
          return SizedBox(
            width: 8.w,
            height: 8.h, // height of each field
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
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400, width: 2),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary2, width: 2),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 2.h),
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
      ),
    );
  }

  @override
  void dispose() {
    for (var controller in otpControllers) {
      controller.dispose();
    }
    for (var node in focusNodes) {
      node.dispose();
    }
    _waveController.dispose();
    _circleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color primary = AppColors.primary2;

    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F8),
      body: Stack(children: [
        // Floating background circles
        AnimatedBuilder(
          animation: _circleController,
          builder: (context, child) {
            return CustomPaint(
              painter: FancyCirclePainter(_circleController.value),
              child: Container(),
            );
          },
        ),

        // Top slanted wave
        AnimatedBuilder(
          animation: _waveController,
          builder: (context, child) {
            return ClipPath(
              clipper: SlantedWaveClipper(_waveAnimation.value, isTop: true),
              child: Container(
                height: 20.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.primary2, AppColors.primary],
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
                clipper: SlantedWaveClipper(_waveAnimation.value, isTop: false),
                child: Container(
                  height: 15.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.primary.withOpacity(0.7),
                        AppColors.primary2.withOpacity(0.8)
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

        SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.all(4.w),
                        decoration: BoxDecoration(
                          color: primary.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.phone_iphone,
                          size: 12.w,
                          color: primary,
                        ),
                      ),
                      SizedBox(height: 3.h),
                      Text(
                        "Verify your phone number",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: AppColors.textDark),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        "We sent an OTP to ${widget.phoneNumber}",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: AppColors.textLight),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 4.h),
                      RawKeyboardListener(
                        focusNode: FocusNode(),
                        onKey: (event) {
                          if (event is RawKeyDownEvent &&
                              event.logicalKey ==
                                  LogicalKeyboardKey.backspace) {
                            for (int i = 5; i >= 0; i--) {
                              if (otpControllers[i].text.isNotEmpty) {
                                otpControllers[i].clear();
                                FocusScope.of(context)
                                    .requestFocus(focusNodes[i]);
                                break;
                              }
                            }
                          }
                        },
                        child: _buildOtpFields(),
                      ),
                      SizedBox(height: 4.h),
                      SizedBox(
                        width: double.infinity,
                        height: 7.h,
                        child: ElevatedButton(
                          onPressed: isButtonEnabled ? _verifyOtp : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isButtonEnabled
                                ? AppColors.primary2
                                : Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: const Text("Verify"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

// ---------------- Slanted Waves ----------------
class SlantedWaveClipper extends CustomClipper<Path> {
  final double waveHeight;
  final bool isTop;
  SlantedWaveClipper(this.waveHeight, {this.isTop = true});

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
  bool shouldReclip(covariant SlantedWaveClipper oldClipper) => true;
}

// ---------------- Fancy Floating Circles ----------------
class FancyCirclePainter extends CustomPainter {
  final double animationValue;
  FancyCirclePainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppColors.primary.withOpacity(0.15)
      ..style = PaintingStyle.fill;

    double shift = 50 * animationValue;

    canvas.drawCircle(
        Offset(size.width * 0.15, size.height * 0.25 + shift), 140, paint);
    canvas.drawCircle(
        Offset(size.width * 0.75, size.height * 0.15 - shift), 170, paint);
    canvas.drawCircle(
        Offset(size.width * 0.55, size.height * 0.65 + shift / 2), 150, paint);
    canvas.drawCircle(
        Offset(size.width * 0.25, size.height * 0.8 - shift / 2), 120, paint);
  }

  @override
  bool shouldRepaint(covariant FancyCirclePainter oldDelegate) => true;
}
