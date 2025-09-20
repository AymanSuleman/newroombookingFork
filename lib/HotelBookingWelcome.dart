import 'package:flutter/material.dart';
import 'package:newroombooking/theme.dart';

class HotelBookingWelcome extends StatefulWidget {
  const HotelBookingWelcome({super.key});

  @override
  State<HotelBookingWelcome> createState() => _HotelBookingWelcomeState();
}

class _HotelBookingWelcomeState extends State<HotelBookingWelcome>
    with TickerProviderStateMixin {
  late AnimationController _scaleController;
  late AnimationController _moveController;
  late AnimationController _fadeController;

  late Animation<double> _scaleAnimation;
  late Animation<double> _moveAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    // Scale animation (welcome-in)
    _scaleController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    _scaleAnimation = CurvedAnimation(
      parent: _scaleController,
      curve: Curves.easeOut,
    );

    // Move-up animation
    _moveController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    _moveAnimation = CurvedAnimation(
      parent: _moveController,
      curve: Curves.easeInOut,
    );

    // Fade-in animation
    _fadeController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeInOut,
    );

    // Sequence animation
    _scaleController.forward().then((_) {
      _moveController.forward().then((_) {
        _fadeController.forward();
      });
    });
  }

  @override
  void dispose() {
    _scaleController.dispose();
    _moveController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const Color primary = AppColors.primary2;

    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F8),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
      ), // background-light
      body: Stack(
        children: [
          // Center logo animation (welcome-in + move-up)
          AnimatedBuilder(
            animation: Listenable.merge([_scaleAnimation, _moveAnimation]),
            builder: (context, child) {
              return Positioned(
                top: MediaQuery.of(context).size.height *
                    (0.5 - (_moveAnimation.value * 0.35)), // move up
                left: MediaQuery.of(context).size.width * 0.5 - 85,
                child: Transform.scale(
                  scale: 0.5 + (_scaleAnimation.value * 0.5),
                  child: child,
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: primary.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Container(
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: primary,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.hotel,
                  size: 64,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // Bottom content (fade-in)
          AnimatedBuilder(
            animation: _fadeAnimation,
            builder: (context, child) {
              return Positioned(
                bottom: 80,
                left: 0,
                right: 0,
                child: Opacity(
                  opacity: _fadeAnimation.value,
                  child: Transform.translate(
                    offset: Offset(0, 20 * (1 - _fadeAnimation.value)),
                    child: child,
                  ),
                ),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Select Your Location",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Navigate to location selection screen
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primary,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 6,
                      ),
                      child: const Text(
                        "Select Location",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
