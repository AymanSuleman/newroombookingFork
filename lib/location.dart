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

    _flowController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
      lowerBound: 0.95,
      upperBound: 1.05,
    )..repeat(reverse: true);

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
    setState(() {
      _showContinue = query.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Stack(
        children: [
          // Gradient background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.primary2.withOpacity(0.9),
                  AppColors.primary.withOpacity(0.2),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          AnimatedBuilder(
            animation: _flowController,
            builder: (context, child) {
              final curvedValue =
                  Curves.easeOutBack.transform(_flowController.value);
              final offsetY = (1 - curvedValue) * 400;

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
                    // Logo with pulse + shadow
                    ScaleTransition(
                      scale: _pulseController,
                      child: Container(
                        padding: const EdgeInsets.all(32),
                        decoration: BoxDecoration(
                          color: AppColors.primary2,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 16,
                              color: Colors.black26,
                              offset: Offset(0, 8),
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
                      style: textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 22),

                    // Floating search card
                    Material(
                      elevation: 6,
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white.withOpacity(0.95),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: TextField(
                          controller: _locationController,
                          onSubmitted: (_) => _submitSearch(),
                          onChanged: (_) => _submitSearch(),
                          style: textTheme.bodyLarge,
                          decoration: InputDecoration(
                            prefixIcon:
                                const Icon(Icons.search, color: AppColors.primary2),
                            hintText: "Enter your destination",
                            hintStyle: textTheme.bodyMedium?.copyWith(
                                color: Colors.grey.shade600, fontSize: 16),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.95),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 16),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Continue button
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 400),
                      child: _showContinue
                          ? SizedBox(
                              width: double.infinity,
                              height: 50,
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
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                child: Text(
                                  "Continue",
                                  style: textTheme.labelLarge?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
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
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:newroombooking/home.dart';
// import 'package:newroombooking/theme.dart';

// class HotelBookingWelcome extends StatefulWidget {
//   const HotelBookingWelcome({super.key});

//   @override
//   State<HotelBookingWelcome> createState() => _HotelBookingWelcomeState();
// }

// class _HotelBookingWelcomeState extends State<HotelBookingWelcome>
//     with TickerProviderStateMixin {
//   late AnimationController _flowController;
//   late AnimationController _pulseController;

//   final TextEditingController _locationController = TextEditingController();
//   bool _showContinue = false;

//   @override
//   void initState() {
//     super.initState();

//     _flowController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1200),
//     );

//     _pulseController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1200),
//       lowerBound: 0.95,
//       upperBound: 1.05,
//     )..repeat(reverse: true);

//     Future.delayed(const Duration(milliseconds: 400), () {
//       _flowController.forward();
//     });
//   }

//   @override
//   void dispose() {
//     _flowController.dispose();
//     _pulseController.dispose();
//     _locationController.dispose();
//     super.dispose();
//   }

//   void _submitSearch() {
//     setState(() {
//       _showContinue = _locationController.text.isNotEmpty;
//     });
//   }

//   Future<LatLng> _getCurrentLocation() async {
//     Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);
//     return LatLng(position.latitude, position.longitude);
//   }

//   Future<void> _openMapPicker() async {
//     final result = await Navigator.push(
//       context,
//       MaterialPageRoute(builder: (_) => const MapPickerPage()),
//     );
//     if (result != null && result is LatLng) {
//       setState(() {
//         _locationController.text =
//             "${result.latitude.toStringAsFixed(5)}, ${result.longitude.toStringAsFixed(5)}";
//         _showContinue = true;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;

//     return Scaffold(
//       body: Stack(
//         children: [
//           // Gradient background
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   AppColors.primary2.withOpacity(0.9),
//                   AppColors.primary.withOpacity(0.2),
//                 ],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//               ),
//             ),
//           ),
//           AnimatedBuilder(
//             animation: _flowController,
//             builder: (context, child) {
//               final curvedValue =
//                   Curves.easeOutBack.transform(_flowController.value);
//               final offsetY = (1 - curvedValue) * 400;

//               return Transform.translate(
//                 offset: Offset(0, offsetY),
//                 child: child,
//               );
//             },
//             child: Center(
//               child: SingleChildScrollView(
//                 padding: const EdgeInsets.symmetric(horizontal: 24),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     // Logo with pulse + shadow
//                     ScaleTransition(
//                       scale: _pulseController,
//                       child: Container(
//                         padding: const EdgeInsets.all(32),
//                         decoration: BoxDecoration(
//                           color: AppColors.primary2,
//                           shape: BoxShape.circle,
//                           boxShadow: const [
//                             BoxShadow(
//                               blurRadius: 16,
//                               color: Colors.black26,
//                               offset: Offset(0, 8),
//                             )
//                           ],
//                         ),
//                         child: const Icon(
//                           Icons.hotel,
//                           size: 64,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 32),

//                     // Title
//                     Text(
//                       "Find Your Stay",
//                       style: textTheme.titleLarge?.copyWith(
//                         color: Colors.white,
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 22),

//                     // Floating search card
//                     Material(
//                       elevation: 6,
//                       borderRadius: BorderRadius.circular(16),
//                       color: Colors.white.withOpacity(0.95),
//                       child: Padding(
//                         padding: const EdgeInsets.all(12),
//                         child: TextField(
//                           controller: _locationController,
//                           readOnly: true,
//                           onTap: _openMapPicker,
//                           style: textTheme.bodyLarge,
//                           decoration: InputDecoration(
//                             prefixIcon: const Icon(Icons.search,
//                                 color: AppColors.primary2),
//                             suffixIcon: IconButton(
//                               icon: const Icon(Icons.location_on,
//                                   color: AppColors.primary2),
//                               onPressed: _openMapPicker,
//                             ),
//                             hintText: "Enter your destination",
//                             hintStyle: textTheme.bodyMedium?.copyWith(
//                                 color: Colors.grey.shade600, fontSize: 16),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(16),
//                               borderSide: BorderSide.none,
//                             ),
//                             filled: true,
//                             fillColor: Colors.white.withOpacity(0.95),
//                             contentPadding: const EdgeInsets.symmetric(
//                                 vertical: 16, horizontal: 16),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 24),

//                     // Continue button
//                     AnimatedSwitcher(
//                       duration: const Duration(milliseconds: 400),
//                       child: _showContinue
//                           ? SizedBox(
//                               width: double.infinity,
//                               height: 50,
//                               child: ElevatedButton(
//                                 key: const ValueKey("continueBtn"),
//                                 onPressed: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => MainScreen()),
//                                   );
//                                 },
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: AppColors.primary2,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(16),
//                                   ),
//                                 ),
//                                 child: Text(
//                                   "Continue",
//                                   style: textTheme.labelLarge?.copyWith(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             )
//                           : const SizedBox.shrink(),
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

// /// Google Map Picker Page
// class MapPickerPage extends StatefulWidget {
//   const MapPickerPage({super.key});

//   @override
//   State<MapPickerPage> createState() => _MapPickerPageState();
// }

// class _MapPickerPageState extends State<MapPickerPage> {
//   LatLng? _pickedLocation;
//   GoogleMapController? _mapController;

//   Future<LatLng> _getCurrentLocation() async {
//     Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);
//     return LatLng(position.latitude, position.longitude);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Pick Location")),
//       body: FutureBuilder<LatLng>(
//         future: _getCurrentLocation(),
//         builder: (context, snapshot) {
//           if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());

//           return Stack(
//             children: [
//               GoogleMap(
//                 initialCameraPosition:
//                     CameraPosition(target: snapshot.data!, zoom: 14),
//                 onMapCreated: (controller) => _mapController = controller,
//                 onTap: (location) => setState(() => _pickedLocation = location),
//                 markers: _pickedLocation != null
//                     ? {Marker(markerId: const MarkerId('picked'), position: _pickedLocation!)}
//                     : {},
//               ),
//               Positioned(
//                 bottom: 20,
//                 left: 20,
//                 right: 20,
//                 child: ElevatedButton(
//                   onPressed: _pickedLocation == null
//                       ? null
//                       : () {
//                           Navigator.pop(context, _pickedLocation);
//                         },
//                   child: const Text("Select Location"),
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
