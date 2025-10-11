// import 'package:flutter/material.dart';
// import 'package:newroombooking/HistoryScreen.dart';
// import 'package:newroombooking/ProfileScreen.dart';
// import 'package:newroombooking/RoomDetailsPage.dart';
// import 'package:newroombooking/favorites_screen.dart';
// import 'package:newroombooking/notification.dart';
// import 'theme.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int _currentIndex = 0;
//   final TextEditingController _searchController = TextEditingController();
//   late final List<Widget> _screens;

//   @override
//   void initState() {
//     super.initState();
//     _screens = [
//       HomeScreenBody(searchController: _searchController),
//       const FavoritesScreen(),
//       const HistoryScreen(),
//       const ProfilePage(),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: _currentIndex == 0
//           ? AppBar(
//               automaticallyImplyLeading: false,
//               backgroundColor: Colors.white.withOpacity(0.8),
//               elevation: 0,
//               title: Text("Find your stay",
//                   style: AppTheme.lightTheme.textTheme.titleLarge),
//               actions: [
//                 Stack(
//                   children: [
//                     IconButton(
//                       icon: const Icon(Icons.notifications_none),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const NotificationScreen(),
//                           ),
//                         );
//                       },
//                     ),
//                     Positioned(
//                       right: 11,
//                       top: 11,
//                       child: Container(
//                         height: 10,
//                         width: 10,
//                         decoration: BoxDecoration(
//                           color: AppColors.primary2,
//                           shape: BoxShape.circle,
//                           border: Border.all(color: Colors.white, width: 2),
//                         ),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             )
//           : null,
//      body: IndexedStack(
//         index: _currentIndex,
//         children: _screens,
//       ),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: PhysicalModel(
//           color: Colors.transparent,
//           elevation: 12,
//           shadowColor: Colors.black38,
//           borderRadius: BorderRadius.circular(30),
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(30),
//               color: Colors.white.withOpacity(0.80),
//               boxShadow: const [
//                 BoxShadow(
//                   color: Colors.black12,
//                   blurRadius: 10,
//                   offset: Offset(0, 5),
//                 ),
//               ],
//             ),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(30),
//               child: BottomNavigationBar(
//                 currentIndex: _currentIndex,
//                 type: BottomNavigationBarType.fixed,
//                 backgroundColor: Colors.transparent,
//                 elevation: 0,
//                 selectedItemColor: AppColors.primary2,
//                 unselectedItemColor: Colors.grey,
//                 showSelectedLabels: true,
//                 showUnselectedLabels: true,
//                 selectedLabelStyle: const TextStyle(
//                     fontFamily: 'Poppins',
//                     fontWeight: FontWeight.w600,
//                     fontSize: 12),
//                 unselectedLabelStyle: const TextStyle(
//                     fontFamily: 'Poppins',
//                     fontWeight: FontWeight.w500,
//                     fontSize: 12),
//                 onTap: (index) {
//                   setState(() {
//                     _currentIndex = index;
//                   });
//                 },
//                 items: const [
//                   BottomNavigationBarItem(
//                     icon: Icon(Icons.home),
//                     label: "Home",
//                   ),
//                   BottomNavigationBarItem(
//                     icon: Icon(Icons.favorite),
//                     label: "Favorite",
//                   ),
//                   BottomNavigationBarItem(
//                     icon: Icon(Icons.history),
//                     label: "History",
//                   ),
//                   BottomNavigationBarItem(
//                     icon: Icon(Icons.person),
//                     label: "Profile",
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       )
//     );
//   }
// }


// // ---------------- Home Screen ---------------- //

// class HomeScreenBody extends StatefulWidget {
//   final TextEditingController searchController;
//   const HomeScreenBody({super.key, required this.searchController});

//   @override
//   State<HomeScreenBody> createState() => _HomeScreenBodyState();
// }

// class _HomeScreenBodyState extends State<HomeScreenBody> {
//   final List<Map<String, dynamic>> hotels = [
//     {
//       "title": "The Grand Majestic",
//       "subtitle": "Luxury hotel in downtown",
//       "price": "\$250/night",
//       "rating": "4.8",
//       "category": "Hotels",
//       "image":
//           "https://lh3.googleusercontent.com/aida-public/AB6AXuAbceWUbt2SiWY9wIMC8JTqHG-BzLs2uiKEDYikVS7BZX5BkdOh3Nrh2CzSud-CKFlh9VTS73c3XYVcdpd7jLlQtQeb2FrSHctwyRLO3U1kMC2ZCWObx4CxOOmajsKsOGsvF7M6ch9qOW-yAPcBFSMPElmF2B9svy1Ger3IAR3HN42agbywHRY6KXRQYYTbBn8kMrRHpgoP1ymyUfwmForxsHskrSfKWzwOE9haybSOMmIu4sQiSOcN88_2A0irITGZMup-7nAZKO4",
//     },
//     {
//       "title": "Cozy Retreat Apartments",
//       "subtitle": "Modern apartments with city views",
//       "price": "\$150/night",
//       "rating": "4.5",
//       "category": "Apartments",
//       "image":
//           "https://lh3.googleusercontent.com/aida-public/AB6AXuAqzhUEJlZ9Yg7eOj9QYNsMFEkaYryzrvN_x_CChkc1oaaAxNrzHWgHHN6pI7Yf46qr0niu2Mxv64WSf0jkxdSbKnjSjGgR5OXQEjIOPLlHTyvzniDb7hVzqB1onNsTkMlIdRSK1ckKbu_orOk8ZZ5pPJo9CQi1BvlGiwffv02hPHIxKgZzV0ZhYk9n8HOvjq5hh72uGvzq27y62YSf-GwdpOHQdEjKvr1sSht-exrHZNd62XfyQY4S7gZ381berS1FAF3FNyDRAQU",
//     },
//     {
//       "title": "Seaside Vacation Rentals",
//       "subtitle": "Beachfront houses for families",
//       "price": "\$300/night",
//       "rating": "4.7",
//       "category": "Vacation Rentals",
//       "image":
//           "https://lh3.googleusercontent.com/aida-public/AB6AXuAbceWUbt2SiWY9wIMC8JTqHG-BzLs2uiKEDYikVS7BZX5BkdOh3Nrh2CzSud-CKFlh9VTS73c3XYVcdpd7jLlQtQeb2FrSHctwyRLO3U1kMC2ZCWObx4CxOOmajsKsOGsvF7M6ch9qOW-yAPcBFSMPElmF2B9svy1Ger3IAR3HN42agbywHRY6KXRQYYTbBn8kMrRHpgoP1ymyUfwmForxsHskrSfKWzwOE9haybSOMmIu4sQiSOcN88_2A0irITGZMup-7nAZKO4",
//     },
//     {
//       "title": "Tranquil Villa Escapes",
//       "subtitle": "Private villas with pools",
//       "price": "\$400/night",
//       "rating": "4.9",
//       "category": "Villas",
//       "image":
//           "https://lh3.googleusercontent.com/aida-public/AB6AXuB0zds5e12yrln94NDdkmBbrikw6QXb7Klj1QjqfvZS18mlb3FTOXtL0jdQo2CBN9NWNYdGICekF12nQ3cnaSaXlmmwKMfEL-r_4GjGGJC4WyhDLiOUP4qHx7q280Xlt-5ZTCBn9CW2qQ242GWkuNu7vBHAI9687akaTcATkUj_zcQmjDVhaejxtbRZeb-Lj1Dx65GtUIVwlbT3wt3z5DNfKJXZ98JZiLxr59DrAsdlm5HFeJL0lIAkvUO3IznkmUZM7g8RgO5-MKE",
//     },
//   ];

//   List<Map<String, dynamic>> filteredHotels = [];
//   String selectedCategory = "All";

//   @override
//   void initState() {
//     super.initState();
//     filteredHotels = hotels;
//   }

//   void _filterHotels(String query) {
//     setState(() {
//       filteredHotels = hotels
//           .where((hotel) =>
//               (selectedCategory == "All" || hotel["category"] == selectedCategory) &&
//               (hotel["title"].toLowerCase().contains(query.toLowerCase()) ||
//                   hotel["subtitle"].toLowerCase().contains(query.toLowerCase())))
//           .toList();
//     });
//   }

//   void _selectCategory(String category) {
//     setState(() {
//       selectedCategory = category;
//       filteredHotels = hotels
//           .where((hotel) =>
//               (category == "All" || hotel["category"] == category) &&
//               (hotel["title"]
//                       .toLowerCase()
//                       .contains(widget.searchController.text.toLowerCase()) ||
//                   hotel["subtitle"]
//                       .toLowerCase()
//                       .contains(widget.searchController.text.toLowerCase())))
//           .toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Search bar
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//               child: TextField(
//                 controller: widget.searchController,
//                 onChanged: _filterHotels,
//                 decoration: InputDecoration(
//                   prefixIcon: const Icon(Icons.search, color: Colors.grey),
//                   hintText: "Where to?",
//                   filled: true,
//                   fillColor: Colors.white,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                     borderSide: BorderSide.none,
//                   ),
//                   hintStyle: AppTheme.lightTheme.textTheme.bodyMedium,
//                 ),
//                 style: AppTheme.lightTheme.textTheme.bodyLarge,
//               ),
//             ),
//             // Categories
//             SizedBox(
//               height: 50,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 children: [
//                   CategoryTab(
//                     icon: Icons.all_inclusive,
//                     label: "All",
//                     selected: selectedCategory == "All",
//                     onTap: () => _selectCategory("All"),
//                   ),
//                   CategoryTab(
//                     icon: Icons.hotel,
//                     label: "Hotels",
//                     selected: selectedCategory == "Hotels",
//                     onTap: () => _selectCategory("Hotels"),
//                   ),
//                   CategoryTab(
//                     icon: Icons.apartment,
//                     label: "Apartments",
//                     selected: selectedCategory == "Apartments",
//                     onTap: () => _selectCategory("Apartments"),
//                   ),
//                   CategoryTab(
//                     icon: Icons.cabin,
//                     label: "Vacation Rentals",
//                     selected: selectedCategory == "Vacation Rentals",
//                     onTap: () => _selectCategory("Vacation Rentals"),
//                   ),
//                   CategoryTab(
//                     icon: Icons.villa,
//                     label: "Villas",
//                     selected: selectedCategory == "Villas",
//                     onTap: () => _selectCategory("Villas"),
//                   ),
//                 ],
//               ),
//             ),
//             // Hotels list
//             AnimatedSwitcher(
//               duration: const Duration(milliseconds: 500),
//               switchInCurve: Curves.easeOut,
//               switchOutCurve: Curves.easeIn,
//               child: ListView.builder(
//                 key: ValueKey<String>(
//                     "${selectedCategory}-${widget.searchController.text}"),
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 padding: const EdgeInsets.all(16),
//                 itemCount: filteredHotels.length,
//                 itemBuilder: (context, index) {
//                   final hotel = filteredHotels[index];
//                   return Padding(
//                     padding: const EdgeInsets.only(bottom: 16),
//                     child: InkWell(
//                       borderRadius: BorderRadius.circular(16),
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => RoomDetailsPage(),
//                           ),
//                         );
//                       },
//                       child: HotelCard(
//                         title: hotel["title"],
//                         subtitle: hotel["subtitle"],
//                         price: hotel["price"],
//                         rating: hotel["rating"],
//                         image: hotel["image"],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ---------------- Hotel Card ---------------- //

// class HotelCard extends StatefulWidget {
//   final String title;
//   final String subtitle;
//   final String price;
//   final String rating;
//   final String image;

//   const HotelCard({
//     super.key,
//     required this.title,
//     required this.subtitle,
//     required this.price,
//     required this.rating,
//     required this.image,
//   });

//   @override
//   State<HotelCard> createState() => _HotelCardState();
// }

// class _HotelCardState extends State<HotelCard> {
//   bool isFavorite = false; // <-- move state here

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       elevation: 4,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Stack(
//             children: [
//               ClipRRect(
//                 borderRadius:
//                     const BorderRadius.vertical(top: Radius.circular(16)),
//                 child: Image.network(
//                   widget.image,
//                   height: 150,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Positioned(
//                 top: 8,
//                 right: 8,
//                 child: IconButton(
//                   icon: Icon(
//                     isFavorite ? Icons.favorite : Icons.favorite_border,
//                     color: isFavorite ? Colors.red : Colors.white,
//                     size: 28,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       isFavorite = !isFavorite;
//                     });
//                   },
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(12),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: Text(
//                         widget.title,
//                         style: AppTheme.lightTheme.textTheme.labelSmall!
//                             .copyWith(fontWeight: FontWeight.bold),
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         const Icon(Icons.star, size: 16, color: Colors.amber),
//                         Text(widget.rating,
//                             style: AppTheme.lightTheme.textTheme.bodyMedium),
//                       ],
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 4),
//                 Text(widget.subtitle,
//                     style: AppTheme.lightTheme.textTheme.bodyMedium),
//                 const SizedBox(height: 6),
//                 Text(
//                   widget.price,
//                   style: AppTheme.lightTheme.textTheme.bodyLarge!.copyWith(
//                       fontWeight: FontWeight.bold, color: AppColors.primary2),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // ---------------- Category Tab ---------------- //

// class CategoryTab extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   final bool selected;
//   final VoidCallback? onTap;

//   const CategoryTab({
//     super.key,
//     required this.icon,
//     required this.label,
//     this.selected = false,
//     this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         margin: const EdgeInsets.only(right: 12),
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//         decoration: BoxDecoration(
//           color: selected ? AppColors.primary2 : Colors.grey.shade200,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Icon(
//               icon,
//               size: 20,
//               color: selected ? Colors.white : Colors.black87,
//             ),
//             const SizedBox(width: 6),
//             Text(
//               label,
//               style: TextStyle(
//                 color: selected ? Colors.white : Colors.black87,
//                 fontWeight: selected ? FontWeight.bold : FontWeight.normal,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




//----------------with sizer---------------------//
import 'package:flutter/material.dart';
import 'package:newroombooking/HistoryScreen.dart';
import 'package:newroombooking/ProfileScreen.dart';
import 'package:newroombooking/RoomDetailsPage.dart';
import 'package:newroombooking/favorites_screen.dart';
import 'package:newroombooking/notification.dart';
import 'package:sizer/sizer.dart';
import 'theme.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final TextEditingController _searchController = TextEditingController();
  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      HomeScreenBody(searchController: _searchController),
      const FavoritesScreen(),
      const HistoryScreen(),
      const ProfilePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentIndex == 0
          ? AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white.withOpacity(0.8),
              elevation: 0,
              title: Text("Find your stay",
                  style: AppTheme.lightTheme.textTheme.titleLarge),
              actions: [
                Stack(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.notifications_none),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NotificationScreen(),
                          ),
                        );
                      },
                    ),
                    Positioned(
                      right: 3.w,
                      top: 1.h,
                      child: Container(
                        height: 1.5.h,
                        width: 1.5.h,
                        decoration: BoxDecoration(
                          color: AppColors.primary2,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 0.5.w),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          : null,
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(4.w),
        child: PhysicalModel(
          color: Colors.transparent,
          elevation: 12,
          shadowColor: Colors.black38,
          borderRadius: BorderRadius.circular(7.w),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.w),
              color: Colors.white.withOpacity(0.80),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7.w),
              child: BottomNavigationBar(
                currentIndex: _currentIndex,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.transparent,
                elevation: 0,
                selectedItemColor: AppColors.primary2,
                unselectedItemColor: Colors.grey,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                selectedLabelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 3.sp),
                unselectedLabelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 3.sp),
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite),
                    label: "Favorite",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.history),
                    label: "History",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: "Profile",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------- Home Screen ---------------- //

class HomeScreenBody extends StatefulWidget {
  final TextEditingController searchController;
  const HomeScreenBody({super.key, required this.searchController});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  final List<Map<String, dynamic>> hotels = [
    // Same hotel data...
      {
      "title": "The Grand Majestic",
      "subtitle": "Luxury hotel in downtown",
      "price": "\$250/night",
      "rating": "4.8",
      "category": "Hotels",
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuAbceWUbt2SiWY9wIMC8JTqHG-BzLs2uiKEDYikVS7BZX5BkdOh3Nrh2CzSud-CKFlh9VTS73c3XYVcdpd7jLlQtQeb2FrSHctwyRLO3U1kMC2ZCWObx4CxOOmajsKsOGsvF7M6ch9qOW-yAPcBFSMPElmF2B9svy1Ger3IAR3HN42agbywHRY6KXRQYYTbBn8kMrRHpgoP1ymyUfwmForxsHskrSfKWzwOE9haybSOMmIu4sQiSOcN88_2A0irITGZMup-7nAZKO4",
    },
    {
      "title": "Cozy Retreat Apartments",
      "subtitle": "Modern apartments with city views",
      "price": "\$150/night",
      "rating": "4.5",
      "category": "Apartments",
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuAqzhUEJlZ9Yg7eOj9QYNsMFEkaYryzrvN_x_CChkc1oaaAxNrzHWgHHN6pI7Yf46qr0niu2Mxv64WSf0jkxdSbKnjSjGgR5OXQEjIOPLlHTyvzniDb7hVzqB1onNsTkMlIdRSK1ckKbu_orOk8ZZ5pPJo9CQi1BvlGiwffv02hPHIxKgZzV0ZhYk9n8HOvjq5hh72uGvzq27y62YSf-GwdpOHQdEjKvr1sSht-exrHZNd62XfyQY4S7gZ381berS1FAF3FNyDRAQU",
    },
    {
      "title": "Seaside Vacation Rentals",
      "subtitle": "Beachfront houses for families",
      "price": "\$300/night",
      "rating": "4.7",
      "category": "Vacation Rentals",
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuAbceWUbt2SiWY9wIMC8JTqHG-BzLs2uiKEDYikVS7BZX5BkdOh3Nrh2CzSud-CKFlh9VTS73c3XYVcdpd7jLlQtQeb2FrSHctwyRLO3U1kMC2ZCWObx4CxOOmajsKsOGsvF7M6ch9qOW-yAPcBFSMPElmF2B9svy1Ger3IAR3HN42agbywHRY6KXRQYYTbBn8kMrRHpgoP1ymyUfwmForxsHskrSfKWzwOE9haybSOMmIu4sQiSOcN88_2A0irITGZMup-7nAZKO4",
    },
    {
      "title": "Tranquil Villa Escapes",
      "subtitle": "Private villas with pools",
      "price": "\$400/night",
      "rating": "4.9",
      "category": "Villas",
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuB0zds5e12yrln94NDdkmBbrikw6QXb7Klj1QjqfvZS18mlb3FTOXtL0jdQo2CBN9NWNYdGICekF12nQ3cnaSaXlmmwKMfEL-r_4GjGGJC4WyhDLiOUP4qHx7q280Xlt-5ZTCBn9CW2qQ242GWkuNu7vBHAI9687akaTcATkUj_zcQmjDVhaejxtbRZeb-Lj1Dx65GtUIVwlbT3wt3z5DNfKJXZ98JZiLxr59DrAsdlm5HFeJL0lIAkvUO3IznkmUZM7g8RgO5-MKE",
    },
  ];

  

  List<Map<String, dynamic>> filteredHotels = [];
  String selectedCategory = "All";

  @override
  void initState() {
    super.initState();
    filteredHotels = hotels;
  }

  void _filterHotels(String query) {
    setState(() {
      filteredHotels = hotels
          .where((hotel) =>
              (selectedCategory == "All" || hotel["category"] == selectedCategory) &&
              (hotel["title"].toLowerCase().contains(query.toLowerCase()) ||
                  hotel["subtitle"].toLowerCase().contains(query.toLowerCase())))
          .toList();
    });
  }

  void _selectCategory(String category) {
    setState(() {
      selectedCategory = category;
      filteredHotels = hotels
          .where((hotel) =>
              (category == "All" || hotel["category"] == category) &&
              (hotel["title"]
                      .toLowerCase()
                      .contains(widget.searchController.text.toLowerCase()) ||
                  hotel["subtitle"]
                      .toLowerCase()
                      .contains(widget.searchController.text.toLowerCase())))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Search bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
              child: TextField(
                controller: widget.searchController,
                onChanged: _filterHotels,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  hintText: "Where to?",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.w),
                    borderSide: BorderSide.none,
                  ),
                  hintStyle: AppTheme.lightTheme.textTheme.bodyMedium,
                ),
                style: AppTheme.lightTheme.textTheme.bodyLarge,
              ),
            ),
            // Categories
            SizedBox(
              height: 6.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                children: [
                  CategoryTab(
                    icon: Icons.all_inclusive,
                    label: "All",
                    selected: selectedCategory == "All",
                    onTap: () => _selectCategory("All"),
                  ),
                  CategoryTab(
                    icon: Icons.hotel,
                    label: "Hotels",
                    selected: selectedCategory == "Hotels",
                    onTap: () => _selectCategory("Hotels"),
                  ),
                  CategoryTab(
                    icon: Icons.apartment,
                    label: "Apartments",
                    selected: selectedCategory == "Apartments",
                    onTap: () => _selectCategory("Apartments"),
                  ),
                  CategoryTab(
                    icon: Icons.cabin,
                    label: "Vacation Rentals",
                    selected: selectedCategory == "Vacation Rentals",
                    onTap: () => _selectCategory("Vacation Rentals"),
                  ),
                  CategoryTab(
                    icon: Icons.villa,
                    label: "Villas",
                    selected: selectedCategory == "Villas",
                    onTap: () => _selectCategory("Villas"),
                  ),
                ],
              ),
            ),
            // Hotels list
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              switchInCurve: Curves.easeOut,
              switchOutCurve: Curves.easeIn,
              child: ListView.builder(
                key: ValueKey<String>(
                    "${selectedCategory}-${widget.searchController.text}"),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(4.w),
                itemCount: filteredHotels.length,
                itemBuilder: (context, index) {
                  final hotel = filteredHotels[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 4.h),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(4.w),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RoomDetailsPage(),
                          ),
                        );
                      },
                      child: HotelCard(
                        title: hotel["title"],
                        subtitle: hotel["subtitle"],
                        price: hotel["price"],
                        rating: hotel["rating"],
                        image: hotel["image"],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------- Hotel Card ---------------- //

class HotelCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final String price;
  final String rating;
  final String image;

  const HotelCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.rating,
    required this.image,
  });

  @override
  State<HotelCard> createState() => _HotelCardState();
}

class _HotelCardState extends State<HotelCard> {
  bool isFavorite = false; // <-- move state here

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.w)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(4.w)),
                child: Image.network(
                  widget.image,
                  height: 20.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 2.h,
                right: 2.w,
                child: IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.white,
                    size: 3.h,
                  ),
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(3.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        widget.title,
                        style: AppTheme.lightTheme.textTheme.labelSmall!
                            .copyWith(fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, size: 2.h, color: Colors.amber),
                        SizedBox(width: 1.w),
                        Text(widget.rating,
                            style: AppTheme.lightTheme.textTheme.bodyMedium),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Text(widget.subtitle,
                    style: AppTheme.lightTheme.textTheme.bodyMedium),
                SizedBox(height: 1.h),
                Text(
                  widget.price,
                  style: AppTheme.lightTheme.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold, color: AppColors.primary2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------- Category Tab ---------------- //

class CategoryTab extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback? onTap;

  const CategoryTab({
    super.key,
    required this.icon,
    required this.label,
    this.selected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 3.w),
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.5.h),
        decoration: BoxDecoration(
          color: selected ? AppColors.primary2 : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 3.h,
              color: selected ? Colors.white : Colors.black87,
            ),
            SizedBox(width: 2.w),
            Text(
              label,
              style: TextStyle(
                color: selected ? Colors.white : Colors.black87,
                fontWeight: selected ? FontWeight.bold : FontWeight.normal,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
