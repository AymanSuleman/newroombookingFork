import 'package:flutter/material.dart';
import 'package:newroombooking/PaymentDetailsPage.dart';
import 'package:newroombooking/theme.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:sizer/sizer.dart';

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
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.9),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text("Rooms", style: textTheme.titleLarge),
      ),
      body: ListView(
        padding: EdgeInsets.only(bottom: 10.h),
        children: [
          Padding(
            padding: EdgeInsets.all(4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Select Rooms Category", style: textTheme.labelMedium),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    _CategoryChip(
                        label: "2X (26)",
                        isSelected: selectedCategory == "2X (26)",
                        onTap: () =>
                            setState(() => selectedCategory = "2X (26)")),
                    SizedBox(width: 2.w),
                    _CategoryChip(
                        label: "3X (20)",
                        isSelected: selectedCategory == "3X (20)",
                        onTap: () =>
                            setState(() => selectedCategory = "3X (20)")),
                    SizedBox(width: 2.w),
                    _CategoryChip(
                        label: "4X (6)",
                        isSelected: selectedCategory == "4X (6)",
                        onTap: () =>
                            setState(() => selectedCategory = "4X (6)")),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 25.h,
            margin: EdgeInsets.symmetric(horizontal: 4.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.w),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://lh3.googleusercontent.com/aida-public/AB6AXuA-rhMGTMGXStCZ1ydfABmaZgt20FVZQdbg6XFzeas-LmMB0B2R4CFf4XcLmUIhkl_fGqoamLsYYQ8A9q3JmNeoLzR4U3H1DCbd5xRuG7HWPf8A0XRev339EDvRZbyEdkn9TEoYNKncZEoCwi1T_OvzrhfZKBaIP59Wxjb2VYgqcFsz1pDrJb_lXLSEJGsG8XQXziRZ0OOPKwvVrjQCX3WWqON40hJlXq_7gzA4iMuMp1bM6h5qyfejg71Knfm5SZvzl2a0JrT0Wxg"),
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(selectedCategory, style: textTheme.labelMedium),
                SizedBox(height: 0.5.h),
                Row(
                  children: [
                    Icon(Icons.people, color: Colors.green, size: 2.2.h),
                    SizedBox(width: 2.w),
                    Text("26 rooms left",
                        style:
                            textTheme.bodyLarge?.copyWith(color: Colors.green)),
                  ],
                ),
                SizedBox(height: 1.h),
                Text("No more than 3 Guests", style: textTheme.bodyMedium),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Room Tariff", style: textTheme.labelMedium),
                SizedBox(height: 1.5.h),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                          child: _TariffTile(
                              title: "Single Person", price: "999")),
                      SizedBox(width: 2.w),
                      Expanded(
                          child: _TariffTile(
                              title: "Double Person", price: "1300")),
                      SizedBox(width: 2.w),
                      Expanded(
                          child: _TariffTile(
                              title: "Triple Person", price: "1600")),
                    ],
                  ),
                ),
                SizedBox(height: 3.h),
                Container(
                  padding: EdgeInsets.all(3.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.w),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Guests", style: textTheme.labelMedium),
                      SizedBox(height: 2.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Adults", style: textTheme.bodyLarge),
                          _CounterRow(
                              value: _adults,
                              onAdd: () => setState(() => _adults++),
                              onRemove: () {
                                if (_adults > 1) setState(() => _adults--);
                              }),
                        ],
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Children", style: textTheme.bodyLarge),
                          _CounterRow(
                              value: _children,
                              onAdd: () => setState(() => _children++),
                              onRemove: () {
                                if (_children > 0) setState(() => _children--);
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Amenities", style: textTheme.labelMedium),
                SizedBox(height: 2.h),
                Wrap(
                  spacing: 3.w,
                  runSpacing: 2.h,
                  children: const [
                    AmenityTile(icon: Icons.wifi, title: "Wifi"),
                    AmenityTile(icon: Icons.local_parking, title: "Parking"),
                    AmenityTile(
                        icon: Icons.local_laundry_service, title: "Laundry"),
                    AmenityTile(
                        icon: Icons.free_breakfast,
                        title: "Bed Tea / Breakfast"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(4.w),
        child: ElevatedButton(
          onPressed: () => DateSelectionBottomSheet.show(context),
          child: const Text("Book Now"),
        ),
      ),
    );
  }
}

class _CategoryChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _CategoryChip(
      {required this.label,
      required this.isSelected,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.5.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary2 : Colors.white,
          borderRadius: BorderRadius.circular(2.w),
          border: Border.all(
              color: isSelected ? AppColors.primary2 : Colors.grey.shade300),
        ),
        child: Text(
          label,
          style: textTheme.bodyLarge?.copyWith(
              color: isSelected ? Colors.white : AppColors.normaltext,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class _TariffTile extends StatelessWidget {
  final String title;
  final String price;
  const _TariffTile({required this.title, required this.price, super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(3.w),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(2.w),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Text(title, textAlign: TextAlign.center, style: textTheme.bodyLarge),
          SizedBox(height: 1.h),
          Text("₹$price",
              style:
                  textTheme.labelMedium?.copyWith(color: AppColors.primary2)),
        ],
      ),
    );
  }
}

class AmenityTile extends StatelessWidget {
  final IconData icon;
  final String title;
  const AmenityTile({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(3.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3.w),
        boxShadow: [
          BoxShadow(blurRadius: 4, color: Colors.black12.withOpacity(0.05))
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: AppColors.primary2, size: 3.h),
          SizedBox(width: 2.w),
          Text(title, style: textTheme.bodyLarge),
        ],
      ),
    );
  }
}

class _CounterRow extends StatelessWidget {
  final int value;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  const _CounterRow(
      {super.key,
      required this.value,
      required this.onAdd,
      required this.onRemove});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        IconButton(
            onPressed: onRemove,
            icon: Icon(Icons.remove_circle_outline, size: 3.h)),
        Text("$value", style: textTheme.labelMedium),
        IconButton(
            onPressed: onAdd, icon: Icon(Icons.add_circle_outline, size: 3.h)),
      ],
    );
  }
}



class DateSelectionBottomSheet {
  static void show(BuildContext context) {
    List<DateTime?> selectedDates = [];

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Select Dates",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2.h),
              CalendarDatePicker2(
                config: CalendarDatePicker2Config(
                  calendarType: CalendarDatePicker2Type.range,
                  selectedDayHighlightColor:
                      AppColors.primary2, // selected date
                  weekdayLabelTextStyle: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                  controlsTextStyle: TextStyle(
                    color: AppColors.primary2,
                    fontWeight: FontWeight.bold,
                  ),
                  dayTextStyle: TextStyle(
                    color: Colors.black87,
                  ),
                ),
                value: selectedDates,
                onValueChanged: (dates) {
                  selectedDates = dates;
                },
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: SizedBox(
                  width: double.infinity,
                  height: 6.h,
                  child: ElevatedButton(
                    onPressed: () {
                      if (selectedDates.length < 2 ||
                          selectedDates[0] == null ||
                          selectedDates[1] == null) {
                        // Custom styled error dialog
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              elevation: 10,
                              child: Container(
                                padding: EdgeInsets.all(4.w),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.error_outline,
                                        color: Colors.red, size: 6.h),
                                    SizedBox(height: 2.h),
                                    Text(
                                      "Oops!",
                                      style: AppTheme
                                          .lightTheme.textTheme.titleMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 1.h),
                                    Text(
                                      "Please select the second date",
                                      textAlign: TextAlign.center,
                                      style: AppTheme
                                          .lightTheme.textTheme.bodyMedium,
                                    ),
                                    SizedBox(height: 3.h),
                                    SizedBox(
                                      width: double.infinity,
                                      height: 6.h,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: AppColors.primary2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                        onPressed: () =>
                                            Navigator.of(context).pop(),
                                        child: Text(
                                          "OK",
                                          style: AppTheme
                                              .lightTheme.textTheme.labelLarge
                                              ?.copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      } else {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PaymentDetailsPage()),
                        );
                      }
                    },
                    style: AppTheme.lightTheme.elevatedButtonTheme.style,
                    child: Text(
                      "Continue to Payment",
                      style: AppTheme.lightTheme.textTheme.labelLarge,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
            ],
          ),
        );
      },
    );
  }
}
