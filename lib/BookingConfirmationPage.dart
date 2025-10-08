// import 'package:flutter/material.dart';
// import 'package:newroombooking/home.dart';
// import 'package:newroombooking/theme.dart';

// class BookingConfirmationPage extends StatelessWidget {
//   const BookingConfirmationPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // const primaryColor = AppColors.primary2;

//     return Scaffold(
//         backgroundColor: const Color(0xFFF8FAFC),
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: Colors.transparent,
//           leading: IconButton(
//             icon: const Icon(Icons.close, color: Color(0xFF0D171B)),
//             onPressed: () => Navigator.pop(context),
//           ),
//           centerTitle: true,
//           title: const Text(
//             "Booking Confirmation",
//             style: TextStyle(
//               color: Color(0xFF0D171B),
//               fontWeight: FontWeight.bold,
//               fontSize: 18,
//             ),
//           ),
//         ),
//         body: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Success Icon
//               Container(
//                 padding: const EdgeInsets.all(12),
//                 decoration: BoxDecoration(
//                   color: AppColors.primary2,
//                   shape: BoxShape.circle,
//                 ),
//                 child: Icon(Icons.check, size: 40, color: AppColors.container),
//               ),
//               const SizedBox(height: 16),
//               const Text(
//                 "Your booking is confirmed!",
//                 style: TextStyle(
//                   color: Color(0xFF0D171B),
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 8),
//               const Text(
//                 "Thank you, Amelia, for choosing us. Your reservation at The Grand Majestic Hotel is confirmed. We look forward to welcoming you.",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 15, color: Colors.grey),
//               ),
//               const SizedBox(height: 20),

//               // Booking Details Card
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(16),
//                   boxShadow: [
//                     BoxShadow(
//                         color: Colors.black12,
//                         blurRadius: 6,
//                         offset: const Offset(0, 2))
//                   ],
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       "Booking Details",
//                       style: TextStyle(
//                           color: AppColors.primary2,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(height: 16),
//                     _buildDetailItem(Icons.hotel, "Hotel",
//                         "The Grand Majestic Hotel", AppColors.primary2),
//                     const SizedBox(height: 12),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: _buildDetailItem(Icons.calendar_month,
//                               "Check-in", "Fri, Jul 12", AppColors.primary2),
//                         ),
//                         const SizedBox(width: 12),
//                         Expanded(
//                           child: _buildDetailItem(Icons.calendar_month,
//                               "Check-out", "Sun, Jul 14", AppColors.primary2),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 12),
//                     _buildDetailItem(Icons.bed, "Room Type",
//                         "Deluxe Double Room", AppColors.text),
//                     const SizedBox(height: 12),
//                     _buildDetailItem(
//                         Icons.group, "Guests", "2 Adults", AppColors.text),
//                     const Divider(height: 32),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: const [
//                         Text("Total Price",
//                             style: TextStyle(fontSize: 16, color: Colors.grey)),
//                         Text("\$350",
//                             style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xFF0D171B))),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 16),

//               // Hotel Image
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(16),
//                 child: Image.network(
//                   "https://lh3.googleusercontent.com/aida-public/AB6AXuBMdyQHsv1TXutfn2qKLgbapNZuXf1s8hBnj2RpJGF73aY2YTWSkWfoUw4K355rspY3bJeibMAMN_TZpUbT63i7TN2DVPFh3YtJFZhxlXHbevT4Mv2b-27QfDiOJskrOFUeNt11KrFgZolcpviO3pamf4_3tJo1ZT7A8fFB2-e-xK7z1QIL-Rs5FS56eL4gVo5P3YE_jNFH8xSk2f2_Hu5gdQTmOR70cPxK7J0bVszV7bFic5O_6Nh0DIunTNBXW8dwYdfo8zvfFXI",
//                   height: 180,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               // const SizedBox(height: 100), // space for footer
//             ],
//           ),
//         ),

//         // Sticky Footer with Buttons
//         bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
//           Container(
//             color: Colors.white,
//             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//             child: Column(
//               children: [
//                 // _footerButton(
//                 //     "View Booking Details", primaryColor, Colors.white),
//                 // const SizedBox(height: 10),
//                 // _footerButton("Manage Booking", Colors.grey.shade300,
//                 //     const Color(0xFF0D171B)),
//                 // const SizedBox(height: 10),
//                 _footerButton(
//                   "Back to Home",
//                   AppColors.primary2,
//                   Colors.white,
//                   border: true,
//                   context: context,
//                 ),
//               ],
//             ),
//           ),
//         ]));
//   }

//   Widget _buildDetailItem(
//       IconData icon, String label, String value, Color AppColorsprimary2) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           height: 48,
//           width: 48,
//           decoration: BoxDecoration(
//             color: AppColors.primary2,
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: Icon(icon, color: AppColors.container),
//         ),
//         const SizedBox(width: 12),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(label,
//                 style: const TextStyle(color: Colors.grey, fontSize: 13)),
//             const SizedBox(height: 2),
//             Text(value,
//                 style: const TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.w500,
//                     color: Color(0xFF0D171B))),
//           ],
//         ),
//       ],
//     );
//   }
// }

// Widget _footerButton(String text, Color bg, Color textColor,
//     {bool border = false, required BuildContext context}) {
//   return SizedBox(
//     width: double.infinity,
//     height: 48,
//     child: ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: bg,
//         foregroundColor: textColor,
//         side:
//             border ? BorderSide(color: Colors.grey.shade400) : BorderSide.none,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         elevation: 0,
//       ),
//       onPressed: () {
//         // Navigator
//         Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(builder: (context) => const MainScreen()),
//           (route) => false,
//         );
//       },
//       child: Text(text,
//           style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
//     ),
//   );
// }


import 'package:flutter/material.dart';
import 'package:newroombooking/home.dart';
import 'package:newroombooking/theme.dart';

class BookingConfirmationPage extends StatelessWidget {
  const BookingConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.close, ),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          "Booking Confirmation",
          style: textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Success Icon
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.primary2,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.check, size: 40, color: AppColors.container),
            ),
            const SizedBox(height: 16),
            Text(
              "Your booking is confirmed!",
              style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              "Thank you, Amelia, for choosing us. Your reservation at The Grand Majestic Hotel is confirmed. We look forward to welcoming you.",
              style: textTheme.bodyMedium?.copyWith(color: AppColors.textLight.withOpacity(0.7)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Booking Details Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.container,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: const Offset(0, 2))
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Booking Details",
                    style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold, color: AppColors.primary2),
                  ),
                  const SizedBox(height: 16),
                  _buildDetailItem(Icons.hotel, "Hotel",
                      "The Grand Majestic Hotel", context),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: _buildDetailItem(
                            Icons.calendar_month, "Check-in", "Fri, Jul 12", context),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _buildDetailItem(
                            Icons.calendar_month, "Check-out", "Sun, Jul 14", context),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  _buildDetailItem(Icons.bed, "Room Type", "Deluxe Double Room", context),
                  const SizedBox(height: 12),
                  _buildDetailItem(Icons.group, "Guests", "2 Adults", context),
                  const Divider(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Price",
                          style: textTheme.bodyMedium?.copyWith(
                             )),
                      Text("\$350",
                          style: textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              )),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Hotel Image
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                "https://lh3.googleusercontent.com/aida-public/AB6AXuBMdyQHsv1TXutfn2qKLgbapNZuXf1s8hBnj2RpJGF73aY2YTWSkWfoUw4K355rspY3bJeibMAMN_TZpUbT63i7TN2DVPFh3YtJFZhxlXHbevT4Mv2b-27QfDiOJskrOFUeNt11KrFgZolcpviO3pamf4_3tJo1ZT7A8fFB2-e-xK7z1QIL-Rs5FS56eL4gVo5P3YE_jNFH8xSk2f2_Hu5gdQTmOR70cPxK7J0bVszV7bFic5O_6Nh0DIunTNBXW8dwYdfo8zvfFXI",
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),

      // Sticky Footer
      bottomNavigationBar: Container(
        color: AppColors.container,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: _footerButton("Back to Home", AppColors.primary2, AppColors.container, context),
      ),
    );
  }

  Widget _buildDetailItem(
      IconData icon, String label, String value, BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            color: AppColors.primary2,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: AppColors.container),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label,
                style: textTheme.bodySmall
                    ?.copyWith()),
            const SizedBox(height: 2),
            Text(value,
                style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w200, color: AppColors.textLight)),
          ],
        ),
      ],
    );
  }
}

Widget _footerButton(String text, Color bg, Color textColor, BuildContext context) {
  return SizedBox(
    width: double.infinity,
    height: 48,
    child: ElevatedButton(
    
      onPressed: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const MainScreen()),
          (route) => false,
        );
      },
      child: Text(text,
          style: Theme.of(context)
              .textTheme
              .labelLarge
              ?.copyWith(fontWeight: FontWeight.bold, color: textColor)),
    ),
  );
}
