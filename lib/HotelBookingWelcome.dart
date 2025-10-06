// // import 'package:flutter/material.dart';
// // import 'package:newroombooking/theme.dart';

// // class HotelBookingWelcome extends StatefulWidget {
// //   const HotelBookingWelcome({super.key});

// //   @override
// //   State<HotelBookingWelcome> createState() => _HotelBookingWelcomeState();
// // }

// // class _HotelBookingWelcomeState extends State<HotelBookingWelcome>
// //     with TickerProviderStateMixin {
// //   late AnimationController _scaleController;
// //   late AnimationController _moveController;
// //   late AnimationController _fadeController;

// //   late Animation<double> _scaleAnimation;
// //   late Animation<double> _moveAnimation;
// //   late Animation<double> _fadeAnimation;

// //   @override
// //   void initState() {
// //     super.initState();

// //     // Scale animation (welcome-in)
// //     _scaleController = AnimationController(
// //         vsync: this, duration: const Duration(milliseconds: 1500));
// //     _scaleAnimation = CurvedAnimation(
// //       parent: _scaleController,
// //       curve: Curves.easeOut,
// //     );

// //     // Move-up animation
// //     _moveController = AnimationController(
// //         vsync: this, duration: const Duration(milliseconds: 1000));
// //     _moveAnimation = CurvedAnimation(
// //       parent: _moveController,
// //       curve: Curves.easeInOut,
// //     );

// //     // Fade-in animation
// //     _fadeController = AnimationController(
// //         vsync: this, duration: const Duration(milliseconds: 1000));
// //     _fadeAnimation = CurvedAnimation(
// //       parent: _fadeController,
// //       curve: Curves.easeInOut,
// //     );

// //     // Sequence animation
// //     _scaleController.forward().then((_) {
// //       _moveController.forward().then((_) {
// //         _fadeController.forward();
// //       });
// //     });
// //   }

// //   @override
// //   void dispose() {
// //     _scaleController.dispose();
// //     _moveController.dispose();
// //     _fadeController.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     const Color primary = AppColors.primary2;

// //     return Scaffold(
// //       backgroundColor: const Color(0xFFF6F7F8),
// //       appBar: AppBar(
// //         leading: IconButton(
// //           icon: const Icon(Icons.arrow_back, color: Colors.black87),
// //           onPressed: () => Navigator.pop(context),
// //         ),
// //       ), // background-light
// //       body: Stack(
// //         children: [
// //           // Center logo animation (welcome-in + move-up)
// //           AnimatedBuilder(
// //             animation: Listenable.merge([_scaleAnimation, _moveAnimation]),
// //             builder: (context, child) {
// //               return Positioned(
// //                 top: MediaQuery.of(context).size.height *
// //                     (0.5 - (_moveAnimation.value * 0.35)), // move up
// //                 left: MediaQuery.of(context).size.width * 0.5 - 85,
// //                 child: Transform.scale(
// //                   scale: 0.5 + (_scaleAnimation.value * 0.5),
// //                   child: child,
// //                 ),
// //               );
// //             },
// //             child: Container(
// //               padding: const EdgeInsets.all(24),
// //               decoration: BoxDecoration(
// //                 color: primary.withOpacity(0.2),
// //                 shape: BoxShape.circle,
// //               ),
// //               child: Container(
// //                 padding: const EdgeInsets.all(32),
// //                 decoration: BoxDecoration(
// //                   color: primary,
// //                   shape: BoxShape.circle,
// //                   boxShadow: [
// //                     BoxShadow(
// //                       color: Colors.black.withOpacity(0.2),
// //                       blurRadius: 10,
// //                       offset: const Offset(0, 5),
// //                     ),
// //                   ],
// //                 ),
// //                 child: const Icon(
// //                   Icons.hotel,
// //                   size: 64,
// //                   color: Colors.white,
// //                 ),
// //               ),
// //             ),
// //           ),

// //           // Bottom content (fade-in)
// //           AnimatedBuilder(
// //             animation: _fadeAnimation,
// //             builder: (context, child) {
// //               return Positioned(
// //                 bottom: 80,
// //                 left: 0,
// //                 right: 0,
// //                 child: Opacity(
// //                   opacity: _fadeAnimation.value,
// //                   child: Transform.translate(
// //                     offset: Offset(0, 20 * (1 - _fadeAnimation.value)),
// //                     child: child,
// //                   ),
// //                 ),
// //               );
// //             },
// //             child: Column(
// //               mainAxisSize: MainAxisSize.min,
// //               children: [
// //                 const Text(
// //                   "Select Your Location",
// //                   textAlign: TextAlign.center,
// //                   style: TextStyle(
// //                     fontSize: 32,
// //                     fontWeight: FontWeight.bold,
// //                     color: Colors.black87,
// //                   ),
// //                 ),
// //                 const SizedBox(height: 24),
// //                 Padding(
// //                   padding: const EdgeInsets.symmetric(horizontal: 24),
// //                   child: SizedBox(
// //                     width: double.infinity,
// //                     child: ElevatedButton(
// //                       onPressed: () {

// //                         // TODO: Navigate to location selection screen
// //                       },
// //                       style: ElevatedButton.styleFrom(
// //                         backgroundColor: primary,
// //                         padding: const EdgeInsets.symmetric(vertical: 16),
// //                         shape: RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.circular(12),
// //                         ),
// //                         elevation: 6,
// //                       ),
// //                       child: const Text(
// //                         "Select Location",
// //                         style: TextStyle(
// //                           fontSize: 18,
// //                           fontWeight: FontWeight.bold,
// //                           color: Colors.white,
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:newroombooking/theme.dart';

// // void main() {
// //   runApp(const HotelBookingWelcome());
// // }

// // class HotelBookingWelcome extends StatelessWidget {
// //   const HotelBookingWelcome({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: "Hotel Booking",
// //       debugShowCheckedModeBanner: false,
// //       theme: ThemeData(
// //         brightness: Brightness.light,
// //         primaryColor: AppColors.primary2,
// //         scaffoldBackgroundColor: const Color(0xFFF6F7F8),
// //         fontFamily: "Plus Jakarta Sans",
// //       ),
// //       darkTheme: ThemeData(
// //         brightness: Brightness.dark,
// //         // primaryColor: const Color(0xFF1193d4),
// //         // scaffoldBackgroundColor: const Color(0xFF101c22),
// //         fontFamily: "Plus Jakarta Sans",
// //       ),
// //       themeMode: ThemeMode.system,
// //       home: const HotelBookingWelcome(),
// //     );
// //   }
// // }

// class HotelBookingWelcome extends StatefulWidget {
//   const HotelBookingWelcome({super.key});

//   @override
//   State<HotelBookingWelcome> createState() => _HotelBookingWelcomeState();
// }

// class _HotelBookingWelcomeState extends State<HotelBookingWelcome>
//     with TickerProviderStateMixin {
//   late AnimationController _iconController;
//   late AnimationController _fadeController;

//   @override
//   void initState() {
//     super.initState();

//     _iconController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1500),
//     )..forward();

//     _fadeController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1200),
//     );

//     // Delay fade-in after icon animation
//     Future.delayed(const Duration(milliseconds: 2000), () {
//       _fadeController.forward();
//     });
//   }

//   @override
//   void dispose() {
//     _iconController.dispose();
//     _fadeController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final primary = Theme.of(context).primaryColor;

//     return Scaffold(
//       // appBar: AppBar(
//       //   backgroundColor: Colors.transparent,
//       //   elevation: 0,
//       //   leading: IconButton(
//       //     icon: const Icon(Icons.arrow_back, color: Colors.black87),
//       //     onPressed: () => Navigator.pop(context),
//       //   ),
//       // ),
//       body: Stack(
//         children: [
//           // Center Hotel Icon
//           Center(
//             child: ScaleTransition(
//               scale: CurvedAnimation(
//                 parent: _iconController,
//                 curve: Curves.easeOutBack,
//               ),
//               child: Container(
//                 padding: const EdgeInsets.all(24),
//                 decoration: BoxDecoration(
//                   color: AppColors.primary2.withOpacity(0.2),
//                   shape: BoxShape.circle,
//                 ),
//                 child: Container(
//                   padding: const EdgeInsets.all(32),
//                   decoration: BoxDecoration(
//                     color: AppColors.primary2,
//                     shape: BoxShape.circle,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.3),
//                         blurRadius: 10,
//                         offset: const Offset(0, 4),
//                       )
//                     ],
//                   ),
//                   child: const Icon(
//                     Icons.hotel,
//                     size: 64,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           // Bottom Content (fade-in)
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: FadeTransition(
//               opacity: _fadeController,
//               child: Padding(
//                 padding: const EdgeInsets.only(bottom: 60, left: 24, right: 24),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(
//                       "Find Your Stay",
//                       style: Theme.of(context)
//                           .textTheme
//                           .headlineMedium
//                           ?.copyWith(
//                             fontWeight: FontWeight.bold,
//                             color:
//                                 Theme.of(context).brightness == Brightness.dark
//                                     ? Colors.white
//                                     : Colors.black87,
//                           ),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 20),

//                     // Search Input
//                     TextField(
//                       decoration: InputDecoration(
//                         hintText: "Select Your Location",
//                         prefixIcon:
//                             const Icon(Icons.search, color: Colors.grey),
//                         filled: true,
//                         fillColor:
//                             Theme.of(context).brightness == Brightness.dark
//                                 ? Colors.grey.shade900
//                                 : Colors.white,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide(
//                             color:
//                                 Theme.of(context).brightness == Brightness.dark
//                                     ? Colors.grey.shade600
//                                     : Colors.grey.shade300,
//                           ),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide(
//                             color:
//                                 Theme.of(context).brightness == Brightness.dark
//                                     ? Colors.grey.shade600
//                                     : Colors.grey.shade300,
//                           ),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide(
//                             color: AppColors.primary2,
//                             width: 2,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:newroombooking/home.dart';
import 'package:newroombooking/theme.dart';

class HotelBookingWelcome extends StatefulWidget {
  const HotelBookingWelcome({super.key});

  @override
  State<HotelBookingWelcome> createState() => _HotelBookingWelcomeState();
}

class _HotelBookingWelcomeState extends State<HotelBookingWelcome>
    with TickerProviderStateMixin {
  late AnimationController _flowController;
  late AnimationController _pulseController;

  final TextEditingController _locationController = TextEditingController();
  bool _showContinue = false;

  @override
  void initState() {
    super.initState();

    // Flow animation for whole content (bottom → center)
    _flowController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    // Small pulse for logo
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
      lowerBound: 0.95,
      upperBound: 1.05,
    )..repeat(reverse: true);

    // Start flow animation after short delay
    Future.delayed(const Duration(milliseconds: 400), () {
      _flowController.forward();
    });
  }

  @override
  void dispose() {
    _flowController.dispose();
    _pulseController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  void _submitSearch() {
    final query = _locationController.text.trim();
    if (query.isNotEmpty) {
      setState(() {
        _showContinue = true;
      });
    } else {
      setState(() {
        _showContinue = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? AppColors.primary2 : const Color(0xFFf6f7f8),
      body: AnimatedBuilder(
        animation: _flowController,
        builder: (context, child) {
          final curvedValue =
              Curves.easeOutBack.transform(_flowController.value);
          final offsetY = (1 - curvedValue) * 400; // starts from bottom

          return Transform.translate(
            offset: Offset(0, offsetY),
            child: child,
          );
        },
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Logo with pulse
                ScaleTransition(
                  scale: _pulseController,
                  child: Container(
                    padding: const EdgeInsets.all(32),
                    decoration: const BoxDecoration(
                      color: AppColors.primary2,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 12,
                          color: Colors.black26,
                          offset: Offset(0, 4),
                        )
                      ],
                    ),
                    child: const Icon(
                      Icons.hotel,
                      size: 64,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 32),

                // Title
                Text(
                  "Find Your Stay",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: isDark ? Colors.white : Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 22),

                // Search input
                TextField(
                  controller: _locationController,
                  onSubmitted: (_) => _submitSearch(),
                  onChanged: (_) => _submitSearch(),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    hintText: "Enter your destination",
                    filled: true,
                    fillColor:
                        isDark ? const Color(0xFF1e1e1e) : Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: isDark
                            ? Colors.grey.shade700
                            : Colors.grey.shade300,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: isDark
                            ? Colors.grey.shade700
                            : Colors.grey.shade300,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                          color: Color(0xFF1193d4), width: 2),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 12),
                  ),
                ),
                const SizedBox(height: 24),

                // Continue button
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  child: _showContinue
                      ? SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            key: const ValueKey("continueBtn"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainScreen()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primary2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text(
                              "Continue",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
