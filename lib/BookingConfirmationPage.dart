import 'package:flutter/material.dart';
import 'package:newroombooking/home.dart';
import 'package:newroombooking/theme.dart';

class BookingConfirmationPage extends StatelessWidget {
  const BookingConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF1193D4);

    return Scaffold(
        backgroundColor: const Color(0xFFF8FAFC),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.close, color: Color(0xFF0D171B)),
            onPressed: () => Navigator.pop(context),
          ),
          centerTitle: true,
          title: const Text(
            "Booking Confirmation",
            style: TextStyle(
              color: Color(0xFF0D171B),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
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
                  color: Colors.green.shade100,
                  shape: BoxShape.circle,
                ),
                child:
                    Icon(Icons.check, size: 40, color: Colors.green.shade700),
              ),
              const SizedBox(height: 16),
              const Text(
                "Your booking is confirmed!",
                style: TextStyle(
                  color: Color(0xFF0D171B),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Thank you, Amelia, for choosing us. Your reservation at The Grand Majestic Hotel is confirmed. We look forward to welcoming you.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              const SizedBox(height: 20),

              // Booking Details Card
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
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
                    const Text(
                      "Booking Details",
                      style: TextStyle(
                          color: Color(0xFF0D171B),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    _buildDetailItem(Icons.hotel, "Hotel",
                        "The Grand Majestic Hotel", primaryColor),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: _buildDetailItem(Icons.calendar_month,
                              "Check-in", "Fri, Jul 12", primaryColor),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildDetailItem(Icons.calendar_month,
                              "Check-out", "Sun, Jul 14", primaryColor),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    _buildDetailItem(Icons.bed, "Room Type",
                        "Deluxe Double Room", primaryColor),
                    const SizedBox(height: 12),
                    _buildDetailItem(
                        Icons.group, "Guests", "2 Adults", primaryColor),
                    const Divider(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Total Price",
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                        Text("\$350",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0D171B))),
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
              // const SizedBox(height: 100), // space for footer
            ],
          ),
        ),

        // Sticky Footer with Buttons
        bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              children: [
                // _footerButton(
                //     "View Booking Details", primaryColor, Colors.white),
                // const SizedBox(height: 10),
                // _footerButton("Manage Booking", Colors.grey.shade300,
                //     const Color(0xFF0D171B)),
                // const SizedBox(height: 10),
                _footerButton(
                  "Back to Home",
                  AppColors.primary2,
                  Colors.white,
                  border: true,
                  context: context,
                ),
              ],
            ),
          ),
        ]));
  }
  //     // Bottom Nav Bar
  //     Container(
  //       decoration: const BoxDecoration(
  //         border: Border(top: BorderSide(color: Colors.black12)),
  //         color: Colors.white,
  //       ),
  //       padding: const EdgeInsets.symmetric(vertical: 10),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         children: [
  //           _bottomNavItem(Icons.search, "Explore", false, primaryColor),
  //           _bottomNavItem(Icons.bookmark, "Bookings", true, primaryColor),
  //           _bottomNavItem(Icons.inbox, "Inbox", false, primaryColor),
  //           _bottomNavItem(Icons.person, "Profile", false, primaryColor),
  //         ],
  //       ),
  //     ),
  //   ],
  // ),
  //   );
  // }

  Widget _buildDetailItem(
      IconData icon, String label, String value, Color primaryColor) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: primaryColor),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label,
                style: const TextStyle(color: Colors.grey, fontSize: 13)),
            const SizedBox(height: 2),
            Text(value,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0D171B))),
          ],
        ),
      ],
    );
  }
}

Widget _footerButton(String text, Color bg, Color textColor,
    {bool border = false, required BuildContext context}) {
  return SizedBox(
    width: double.infinity,
    height: 48,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bg,
        foregroundColor: textColor,
        side:
            border ? BorderSide(color: Colors.grey.shade400) : BorderSide.none,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 0,
      ),
      onPressed: () {
        // Navigator
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const MainScreen()),
          (route) => false,
        );
      },
      child: Text(text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
    ),
  );
}

//   Widget _bottomNavItem(
//       IconData icon, String label, bool active, Color primaryColor) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Icon(icon,
//             color: active ? primaryColor : Colors.grey, size: active ? 26 : 24),
//         const SizedBox(height: 4),
//         Text(
//           label,
//           style: TextStyle(
//             fontSize: 12,
//             fontWeight: active ? FontWeight.bold : FontWeight.w500,
//             color: active ? primaryColor : Colors.grey,
//           ),
//         ),
//       ],
//     );
//   }
// }
