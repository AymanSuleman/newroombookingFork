import 'package:flutter/material.dart';
import 'package:newroombooking/PaymentDetailsPage.dart';
import 'package:newroombooking/theme.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

class RoomDetailsPage extends StatelessWidget {
  const RoomDetailsPage({super.key, required Map<String, dynamic> hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC), // bg-slate-50
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.9),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          "Select a Room",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.normaltext,

            // text-primary
          ),
        ),
      ),
      body: ListView(
        children: [
          // Room Image
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://lh3.googleusercontent.com/aida-public/AB6AXuA-rhMGTMGXStCZ1ydfABmaZgt20FVZQdbg6XFzeas-LmMB0B2R4CFf4XcLmUIhkl_fGqoamLsYYQ8A9q3JmNeoLzR4U3H1DCbd5xRuG7HWPf8A0XRev339EDvRZbyEdkn9TEoYNKncZEoCwi1T_OvzrhfZKBaIP59Wxjb2VYgqcFsz1pDrJb_lXLSEJGsG8XQXziRZ0OOPKwvVrjQCX3WWqON40hJlXq_7gzA4iMuMp1bM6h5qyfejg71Knfm5SZvzl2a0JrT0Wxg",
                ),
              ),
            ),
          ),

          // Details Section
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Deluxe Suite",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.normaltext,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "This spacious suite offers a king-size bed, a separate living area, and a private balcony with stunning city views. Enjoy complimentary breakfast and access to the executive lounge.",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.normaltext,
                  ),
                ),
              ],
            ),
          ),

          // Amenities Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Amenities",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.normaltext,
                  ),
                ),
                const SizedBox(height: 16),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 3.5,
                  children: const [
                    AmenityTile(icon: Icons.wifi, title: "Free Wi-Fi"),
                    AmenityTile(icon: Icons.coffee, title: "Coffee Maker"),
                    AmenityTile(icon: Icons.tv, title: "Flat-screen TV"),
                    AmenityTile(icon: Icons.pool, title: "Swimming Pool"),
                    AmenityTile(
                        icon: Icons.fitness_center, title: "Fitness Center"),
                    AmenityTile(
                        icon: Icons.local_parking, title: "Free Parking"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),

      // Sticky Bottom Book Now Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary2,
            minimumSize: const Size(double.infinity, 56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 4,
          ),
          onPressed: () {
            DateSelectionBottomSheet.show(context);
          },
          child: const Text(
            "Book Now",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.iconBg),
          ),
        ),
      ),
    );
  }

  // Bottom Sheet for Date Selection
  void _showBookingSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Select Dates",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0D171B),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Date Fields
              Row(
                children: const [
                  Expanded(child: DateInput(label: "Check-in")),
                  SizedBox(width: 12),
                  Expanded(child: DateInput(label: "Check-out")),
                ],
              ),

              const SizedBox(height: 24),

              // Book Now Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1193d4),
                  minimumSize: Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Book Now",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }
}

// Amenity Widget
class AmenityTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const AmenityTile({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Colors.black12.withOpacity(0.05),
          )
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: AppColors.primary2),
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color(0xFF0D171B),
            ),
          ),
        ],
      ),
    );
  }
}

// Date Input Field
class DateInput extends StatelessWidget {
  final String label;
  const DateInput({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF4C809A),
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.calendar_today, color: Colors.grey),
            hintText: "Select date",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          readOnly: true,
          onTap: () {
            // TODO: implement DatePicker
          },
        ),
      ],
    );
  }
}
// Date Selection Bottom Sheet

class DateSelectionBottomSheet {
  static Future<List<DateTime?>?> show(BuildContext context) {
    return showModalBottomSheet<List<DateTime?>>(
      backgroundColor: AppColors.background,
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        List<DateTime?> _dates = [];

        return StatefulBuilder(
          builder: (context, setState) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 40,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Select Dates",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Calendar
                  CalendarDatePicker2(
                    config: CalendarDatePicker2Config(
                      calendarType: CalendarDatePicker2Type.range,
                      selectedDayHighlightColor: AppColors.primary2,
                      weekdayLabels: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
                      firstDayOfWeek: 0,
                    ),
                    value: _dates,
                    onValueChanged: (dates) {
                      setState(() => _dates = dates);
                    },
                  ),

                  const SizedBox(height: 16),

                  // Show selected check-in/out
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _dates.isNotEmpty && _dates[0] != null
                            ? "Check-in\n${_formatDate(_dates[0]!)}"
                            : "Check-in",
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        _dates.length > 1 && _dates[1] != null
                            ? "Check-out\n${_formatDate(_dates[1]!)}"
                            : "Check-out",
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // Done Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary2,
                      minimumSize: const Size(double.infinity, 56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 4,
                    ),
                    onPressed: () {
                      final parentContext = Navigator.of(context).context;
                      // GuestSelectionBottomSheet.show(context);
                      Navigator.pop(context, _dates);

                      // Then open Guest Selection after closing
                      Future.delayed(const Duration(milliseconds: 200), () {
                        GuestSelectionBottomSheet.show(context);
                      });
//                       Future.delayed(const Duration(milliseconds: 200), () {
//   showModalBottomSheet(
//     context: Navigator.of(context, rootNavigator: true).context,
//     builder: (context) => GuestSelectionBottomSheet(),
//   );
// });
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.iconBg),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  static String _formatDate(DateTime date) {
    return "${date.day}/${date.month}/${date.year}";
  }
}
// guest selection bottom sheet

class GuestSelectionBottomSheet {
  static Future<Map<String, int>?> show(BuildContext context) {
    int adults = 1;
    int children = 0;

    return showModalBottomSheet<Map<String, int>>(
      backgroundColor: AppColors.background,
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Handle bar
                  Container(
                    width: 40,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Title
                  const Text(
                    "Select Guests",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Adults
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Adults",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                          Text("Ages 13 or above",
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              if (adults > 1) {
                                setState(() => adults--);
                              }
                            },
                            icon: const Icon(Icons.remove_circle_outline),
                          ),
                          Text("$adults",
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          IconButton(
                            onPressed: () {
                              setState(() => adults++);
                            },
                            icon: const Icon(Icons.add_circle_outline),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(),

                  // Children
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Children",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                          Text("Ages 2–12",
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              if (children > 0) {
                                setState(() => children--);
                              }
                            },
                            icon: const Icon(Icons.remove_circle_outline),
                          ),
                          Text("$children",
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          IconButton(
                            onPressed: () {
                              setState(() => children++);
                            },
                            icon: const Icon(Icons.add_circle_outline),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Done button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary2,
                      minimumSize: const Size(double.infinity, 56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 4,
                    ),
                    // onPressed: () {
                    //   Navigator.pop(context, {
                    //     "adults": adults,
                    //     "children": children,
                    //   });
                    // },
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentDetailsPage()));
                    },
                    child: const Text(
                      "Done",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.iconBg),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
