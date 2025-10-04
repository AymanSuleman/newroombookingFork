import 'package:flutter/material.dart';
import 'package:newroombooking/PaymentDetailsPage.dart';
import 'package:newroombooking/theme.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

class RoomDetailsPage extends StatefulWidget {
  const RoomDetailsPage({super.key});

  @override
  State<RoomDetailsPage> createState() => _RoomDetailsPageState();
}

class _RoomDetailsPageState extends State<RoomDetailsPage> {
  String selectedCategory = "2X (26)";
  int _adults = 1;
  int _children = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.9),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          "Rooms",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.normaltext,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 80), // leave space for button
        children: [
          // ✅ Select Rooms Category
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Select Rooms Category",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.normaltext,
                  ),
                ),
                const SizedBox(height: 12.0),
                Row(
                  children: [
                    _CategoryChip(
                      key: const ValueKey("2X (26)"),
                      label: "2X (26)",
                      isSelected: selectedCategory == "2X (26)",
                      onTap: () => setState(() => selectedCategory = "2X (26)"),
                    ),
                    const SizedBox(width: 8.0),
                    _CategoryChip(
                      key: const ValueKey("3X (20)"),
                      label: "3X (20)",
                      isSelected: selectedCategory == "3X (20)",
                      onTap: () => setState(() => selectedCategory = "3X (20)"),
                    ),
                    const SizedBox(width: 8.0),
                    _CategoryChip(
                      key: const ValueKey("4X (6)"),
                      label: "4X (6)",
                      isSelected: selectedCategory == "4X (6)",
                      onTap: () => setState(() => selectedCategory = "4X (6)"),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // ✅ Room Image
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 16),
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

          const SizedBox(height: 12.0),

          // ✅ Room Info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  selectedCategory,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.normaltext,
                  ),
                ),
                const SizedBox(height: 4.0),
                Row(
                  children: const [
                    Icon(Icons.people, color: Colors.green, size: 18),
                    SizedBox(width: 6),
                    Text(
                      "26 rooms left",
                      style: TextStyle(color: Colors.green, fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                const Text(
                  "No more than 3 Guests",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16.0),

          // ✅ Room Tariff
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Room Tariff",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.normaltext,
                  ),
                ),
                const SizedBox(height: 10.0),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        child: _TariffTile(title: "Single Person", price: "999.00"),
                      ),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: _TariffTile(title: "Double Person", price: "1300.00"),
                      ),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: _TariffTile(title: "Triple  Person", price: "1600.00"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),

                // ✅ Guest Selection
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Guests",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.normaltext,
                        ),
                      ),
                      const SizedBox(height: 12.0),

                      // Adults Selector
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Adults",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.normaltext),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (_adults > 1) _adults--;
                                  });
                                },
                                icon: const Icon(Icons.remove_circle_outline),
                              ),
                              Text(
                                "$_adults",
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _adults++;
                                  });
                                },
                                icon: const Icon(Icons.add_circle_outline),
                              ),
                            ],
                          ),
                        ],
                      ),

                      const Divider(),

                      // Children Selector
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Children",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.normaltext),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (_children > 0) _children--;
                                  });
                                },
                                icon: const Icon(Icons.remove_circle_outline),
                              ),
                              Text(
                                "$_children",
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _children++;
                                  });
                                },
                                icon: const Icon(Icons.add_circle_outline),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12.0),

          // ✅ Amenities
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Amenities",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.normaltext,
                  ),
                ),
                const SizedBox(height: 12.0),
                Wrap(
                  spacing: 12.0,
                  runSpacing: 12.0,
                  children: const [
                    AmenityTile(icon: Icons.wifi, title: "Wifi"),
                    AmenityTile(icon: Icons.local_parking, title: "Parking"),
                    AmenityTile(icon: Icons.local_laundry_service, title: "Laundry"),
                    AmenityTile(icon: Icons.free_breakfast, title: "Bed Tea / Breakfast"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),

      // ✅ Sticky Bottom Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary2,
            minimumSize: const Size(double.infinity, 52),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          onPressed: () {
            DateSelectionBottomSheet.show(context);
          },
          child: const Text(
            "Book Now",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

// ✅ Category Chip
class _CategoryChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _CategoryChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary2 : Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: isSelected ? AppColors.primary2 : Colors.grey.shade300,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.white : AppColors.normaltext,
          ),
        ),
      ),
    );
  }
}

// ✅ Tariff Tile
class _TariffTile extends StatelessWidget {
  final String title;
  final String price;

  const _TariffTile({required this.title, required this.price, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.normaltext),
          ),
          const SizedBox(height: 6.0),
          Text(
            "₹$price",
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppColors.primary2),
          ),
        ],
      ),
    );
  }
}

// ✅ Amenity Tile
class AmenityTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const AmenityTile({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Colors.black12.withOpacity(0.05),
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: AppColors.primary2),
          const SizedBox(width: 8.0),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: AppColors.normaltext,
            ),
          ),
        ],
      ),
    );
  }
}

// ✅ Date Selection Bottom Sheet
class DateSelectionBottomSheet {
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Select Dates",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: AppColors.normaltext,
                ),
              ),
              const SizedBox(height: 16.0),
              CalendarDatePicker2(
                config: CalendarDatePicker2Config(
                  calendarType: CalendarDatePicker2Type.range,
                ),
                value: [],
                onValueChanged: (dates) {},
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary2,
                  minimumSize: const Size(double.infinity, 52),
                  
                ),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentDetailsPage(),
                    ),
                  );
                },
                child: const Text("Continue to Payment" ,style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                     
              ),
            ],
          ),
        );
      },
    );
  }
}
