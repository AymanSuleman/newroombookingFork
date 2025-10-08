// import 'package:flutter/material.dart';

// class HotelApp extends StatelessWidget {
//   const HotelApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Find your stay',
//       theme: ThemeData(
//         primary2Color: const Color(0xFF1193d4),
//         fontFamily: 'PlusJakartaSans',
//       ),
//       home: const HomeScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   final List<Map<String, dynamic>> hotels = const [
//     {
//       "title": "The Grand Majestic",
//       "subtitle": "Luxury hotel in downtown",
//       "price": "\$250/night",
//       "rating": "4.8",
//       "image":
//           "https://lh3.googleusercontent.com/aida-public/AB6AXuAbceWUbt2SiWY9wIMC8JTqHG-BzLs2uiKEDYikVS7BZX5BkdOh3Nrh2CzSud-CKFlh9VTS73c3XYVcdpd7jLlQtQeb2FrSHctwyRLO3U1kMC2ZCWObx4CxOOmajsKsOGsvF7M6ch9qOW-yAPcBFSMPElmF2B9svy1Ger3IAR3HN42agbywHRY6KXRQYYTbBn8kMrRHpgoP1ymyUfwmForxsHskrSfKWzwOE9haybSOMmIu4sQiSOcN88_2A0irITGZMup-7nAZKO4",
//     },
//     {
//       "title": "Cozy Retreat Apartments",
//       "subtitle": "Modern apartments with city views",
//       "price": "\$150/night",
//       "rating": "4.5",
//       "image":
//           "https://lh3.googleusercontent.com/aida-public/AB6AXuAqzhUEJlZ9Yg7eOj9QYNsMFEkaYryzrvN_x_CChkc1oaaAxNrzHWgHHN6pI7Yf46qr0niu2Mxv64WSf0jkxdSbKnjSjGgR5OXQEjIOPLlHTyvzniDb7hVzqB1onNsTkMlIdRSK1ckKbu_orOk8ZZ5pPJo9CQi1BvlGiwffv02hPHIxKgZzV0ZhYk9n8HOvjq5hh72uGvzq27y62YSf-GwdpOHQdEjKvr1sSht-exrHZNd62XfyQY4S7gZ381berS1FAF3FNyDRAQU",
//     },
//     {
//       "title": "Seaside Vacation Rentals",
//       "subtitle": "Beachfront houses for families",
//       "price": "\$300/night",
//       "rating": "4.7",
//       "image":
//           "https://lh3.googleusercontent.com/aida-public/AB6AXuAFlwVEipjMGkvA6rtt47HJtlF9ECWHfx2fu4rqzxP9eBgtY3PJmg2fJe39XNBAJQCbKg8BUyHCGdh6GzQ-Yh7YB5-aahTtiZguY3oChPv_jiaB-E4ZTNLC8a2VRoKuCBNMeHeL6912EYi1jamchCrXKSc1fOhjK2vEjbqmRvGE17LR0HRGsFI1WW2MtftRNSNoXvFFhrDWoqg44q7ngCseZfsFLdr5x97qKwanf6e6M1JEeqf12DUwOwiJfLlOkDzjh5q8wzBmHI0",
//     },
//     {
//       "title": "Tranquil Villa Escapes",
//       "subtitle": "Private villas with pools",
//       "price": "\$400/night",
//       "rating": "4.9",
//       "image":
//           "https://lh3.googleusercontent.com/aida-public/AB6AXuB0zds5e12yrln94NDdkmBbrikw6QXb7Klj1QjqfvZS18mlb3FTOXtL0jdQo2CBN9NWNYdGICekF12nQ3cnaSaXlmmwKMfEL-r_4GjGGJC4WyhDLiOUP4qHx7q280Xlt-5ZTCBn9CW2qQ242GWkuNu7vBHAI9687akaTcATkUj_zcQmjDVhaejxtbRZeb-Lj1Dx65GtUIVwlbT3wt3z5DNfKJXZ98JZiLxr59DrAsdlm5HFeJL0lIAkvUO3IznkmUZM7g8RgO5-MKE",
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//         title: const Text(
//           "Find your stay",
//           style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//         ),
//         actions: [
//           Stack(
//             children: [
//               IconButton(
//                 icon: const Icon(Icons.notifications_none, color: Colors.black),
//                 onPressed: () {},
//               ),
//               Positioned(
//                 right: 11,
//                 top: 11,
//                 child: Container(
//                   height: 10,
//                   width: 10,
//                   decoration: BoxDecoration(
//                     color: Color(0xFF1193d4),
//                     shape: BoxShape.circle,
//                     border: Border.all(color: Colors.white, width: 2),
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             // Search bar
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: TextField(
//                 decoration: InputDecoration(
//                   prefixIcon: const Icon(Icons.search, color: Colors.grey),
//                   hintText: "Where to?",
//                   filled: true,
//                   fillColor: Colors.white,
//                   contentPadding: const EdgeInsets.symmetric(vertical: 12),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//               ),
//             ),

//             // Categories
//             SizedBox(
//               height: 75,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//                 children: const [
//                   CategoryTab(
//                       icon: Icons.hotel, label: "Hotels", selected: true),
//                   CategoryTab(icon: Icons.apartment, label: "Apartments"),
//                   CategoryTab(icon: Icons.cabin, label: "Vacation Rentals"),
//                   CategoryTab(icon: Icons.villa, label: "Villas"),
//                   CategoryTab(icon: Icons.beach_access, label: "Resorts"),
//                 ],
//               ),
//             ),

//             // Hotel cards
//             Expanded(
//               child: GridView.builder(
//                 padding: const EdgeInsets.all(16),
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 1,
//                   mainAxisSpacing: 16,
//                   childAspectRatio: 1.2,
//                 ),
//                 itemCount: hotels.length,
//                 itemBuilder: (context, index) {
//                   final hotel = hotels[index];
//                   return HotelCard(
//                     title: hotel["title"],
//                     subtitle: hotel["subtitle"],
//                     price: hotel["price"],
//                     rating: hotel["rating"],
//                     image: hotel["image"],
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),

//       // Bottom navigation
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: const Color(0xFF1193d4),
//         unselectedItemColor: Colors.grey,
//         type: BottomNavigationBarType.fixed,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.favorite_border), label: "Bookings"),
//           BottomNavigationBarItem(icon: Icon(Icons.inbox), label: "Inbox"),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
//         ],
//       ),
//     );
//   }
// }

// class CategoryTab extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   final bool selected;

//   const CategoryTab(
//       {super.key,
//       required this.icon,
//       required this.label,
//       this.selected = false});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 16),
//       child: Column(
//         children: [
//           Icon(icon, color: selected ? const Color(0xFF1193d4) : Colors.grey),
//           const SizedBox(height: 4),
//           Text(
//             label,
//             style: TextStyle(
//               fontWeight: selected ? FontWeight.bold : FontWeight.normal,
//               color: selected ? const Color(0xFF1193d4) : Colors.grey,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class HotelCard extends StatelessWidget {
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
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       elevation: 4,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Image with favorite button
//           Stack(
//             children: [
//               ClipRRect(
//                 borderRadius:
//                     const BorderRadius.vertical(top: Radius.circular(16)),
//                 child: Image.network(
//                   image,
//                   height: 150,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Positioned(
//                 top: 8,
//                 right: 8,
//                 child: IconButton(
//                   icon: const Icon(Icons.favorite_border, color: Colors.white),
//                   onPressed: () {},
//                 ),
//               ),
//             ],
//           ),
//           // Details
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
//                         title,
//                         style: const TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 16),
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         const Icon(Icons.star, size: 16, color: Colors.amber),
//                         Text(rating),
//                       ],
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 4),
//                 Text(subtitle, style: const TextStyle(color: Colors.grey)),
//                 const SizedBox(height: 6),
//                 Text(
//                   price,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.black),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// ----------------------------------------------
// import 'package:flutter/material.dart';
// import 'theme.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   final List<Map<String, dynamic>> hotels = const [
//     {
//       "title": "The Grand Majestic",
//       "subtitle": "Luxury hotel in downtown",
//       "price": "\$250/night",
//       "rating": "4.8",
//       "image":
//           "https://lh3.googleusercontent.com/aida-public/AB6AXuAbceWUbt2SiWY9wIMC8JTqHG-BzLs2uiKEDYikVS7BZX5BkdOh3Nrh2CzSud-CKFlh9VTS73c3XYVcdpd7jLlQtQeb2FrSHctwyRLO3U1kMC2ZCWObx4CxOOmajsKsOGsvF7M6ch9qOW-yAPcBFSMPElmF2B9svy1Ger3IAR3HN42agbywHRY6KXRQYYTbBn8kMrRHpgoP1ymyUfwmForxsHskrSfKWzwOE9haybSOMmIu4sQiSOcN88_2A0irITGZMup-7nAZKO4",
//     },
//     {
//       "title": "Cozy Retreat Apartments",
//       "subtitle": "Modern apartments with city views",
//       "price": "\$150/night",
//       "rating": "4.5",
//       "image":
//           "https://lh3.googleusercontent.com/aida-public/AB6AXuAqzhUEJlZ9Yg7eOj9QYNsMFEkaYryzrvN_x_CChkc1oaaAxNrzHWgHHN6pI7Yf46qr0niu2Mxv64WSf0jkxdSbKnjSjGgR5OXQEjIOPLlHTyvzniDb7hVzqB1onNsTkMlIdRSK1ckKbu_orOk8ZZ5pPJo9CQi1BvlGiwffv02hPHIxKgZzV0ZhYk9n8HOvjq5hh72uGvzq27y62YSf-GwdpOHQdEjKvr1sSht-exrHZNd62XfyQY4S7gZ381berS1FAF3FNyDRAQU",
//     },
//     {
//       "title": "Seaside Vacation Rentals",
//       "subtitle": "Beachfront houses for families",
//       "price": "\$300/night",
//       "rating": "4.7",
//       "image":
//           "https://lh3.googleusercontent.com/aida-public/AB6AXuAFlwVEipjMGkvA6rtt47HJtlF9ECWHfx2fu4rqzxP9eBgtY3PJmg2fJe39XNBAJQCbKg8BUyHCGdh6GzQ-Yh7YB5-aahTtiZguY3oChPv_jiaB-E4ZTNLC8a2VRoKuCBNMeHeL6912EYi1jamchCrXKSc1fOhjK2vEjbqmRvGE17LR0HRGsFI1WW2MtftRNSNoXvFFhrDWoqg44q7ngCseZfsFLdr5x97qKwanf6e6M1JEeqf12DUwOwiJfLlOkDzjh5q8wzBmHI0",
//     },
//     {
//       "title": "Tranquil Villa Escapes",
//       "subtitle": "Private villas with pools",
//       "price": "\$400/night",
//       "rating": "4.9",
//       "image":
//           "https://lh3.googleusercontent.com/aida-public/AB6AXuB0zds5e12yrln94NDdkmBbrikw6QXb7Klj1QjqfvZS18mlb3FTOXtL0jdQo2CBN9NWNYdGICekF12nQ3cnaSaXlmmwKMfEL-r_4GjGGJC4WyhDLiOUP4qHx7q280Xlt-5ZTCBn9CW2qQ242GWkuNu7vBHAI9687akaTcATkUj_zcQmjDVhaejxtbRZeb-Lj1Dx65GtUIVwlbT3wt3z5DNfKJXZ98JZiLxr59DrAsdlm5HFeJL0lIAkvUO3IznkmUZM7g8RgO5-MKE",
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Find your stay"),
//         actions: [
//           Stack(
//             children: [
//               IconButton(
//                 icon: const Icon(Icons.notifications_none),
//                 onPressed: () {},
//               ),
//               Positioned(
//                 right: 11,
//                 top: 11,
//                 child: Container(
//                   height: 10,
//                   width: 10,
//                   decoration: BoxDecoration(
//                     color: AppColors.primary2,
//                     shape: BoxShape.circle,
//                     border: Border.all(color: Colors.white, width: 2),
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               // Search bar
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     prefixIcon: const Icon(Icons.search, color: Colors.grey),
//                     hintText: "Where to?",
//                     filled: true,
//                     fillColor: Colors.white,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(30),
//                       borderSide: BorderSide.none,
//                     ),
//                   ),
//                 ),
//               ),

//               // Categories
//               SizedBox(
//                 height: 70,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   children: const [
//                     CategoryTab(
//                         icon: Icons.hotel, label: "Hotels", selected: true),
//                     CategoryTab(icon: Icons.apartment, label: "Apartments"),
//                     CategoryTab(icon: Icons.cabin, label: "Vacation Rentals"),
//                     CategoryTab(icon: Icons.villa, label: "Villas"),
//                     CategoryTab(icon: Icons.beach_access, label: "Resorts"),
//                   ],
//                 ),
//               ),

//               // Hotels list
//               ListView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 padding: const EdgeInsets.all(16),
//                 itemCount: hotels.length,
//                 itemBuilder: (context, index) {
//                   final hotel = hotels[index];
//                   return Padding(
//                     padding: const EdgeInsets.only(bottom: 16),
//                     child: HotelCard(
//                       title: hotel["title"],
//                       subtitle: hotel["subtitle"],
//                       price: hotel["price"],
//                       rating: hotel["rating"],
//                       image: hotel["image"],
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite_border),
//             label: "Bookings",
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.inbox), label: "Inbox"),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
//         ],
//       ),
//     );
//   }
// }

// class CategoryTab extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   final bool selected;

//   const CategoryTab({
//     super.key,
//     required this.icon,
//     required this.label,
//     this.selected = false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 20),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(icon, color: selected ? AppColors.primary2 : AppColors.textLight),
//           const SizedBox(height: 4),
//           Text(
//             label,
//             style: TextStyle(
//               fontWeight: selected ? FontWeight.bold : FontWeight.normal,
//               color: selected ? AppColors.primary2 : AppColors.textLight,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class HotelCard extends StatelessWidget {
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
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       elevation: 4,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Image with favorite button
//           Stack(
//             children: [
//               ClipRRect(
//                 borderRadius:
//                     const BorderRadius.vertical(top: Radius.circular(16)),
//                 child: Image.network(
//                   image,
//                   height: 150,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Positioned(
//                 top: 8,
//                 right: 8,
//                 child: IconButton(
//                   icon: const Icon(Icons.favorite_border, color: Colors.white),
//                   onPressed: () {},
//                 ),
//               ),
//             ],
//           ),
//           // Details
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
//                         title,
//                         style: const TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 16),
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         const Icon(Icons.star, size: 16, color: Colors.amber),
//                         Text(rating),
//                       ],
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 4),
//                 Text(subtitle,
//                     style: const TextStyle(color: AppColors.textLight)),
//                 const SizedBox(height: 6),
//                 Text(
//                   price,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold, color: AppColors.textDark),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// ---------------------------new code ----------------------------------//
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

//   // Screens for bottom navigation
//   final List<Widget> _screens = [
//     const HomeScreenBody(),
//     const FavoritesScreen(),
//     const HistoryScreen(),
//     const ProfileScreen(),

//     // const InboxScreen(),
//     // const ProfileScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: AppColors.primary2,
//         unselectedItemColor: Colors.grey,
//         backgroundColor: Colors.white,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.favorite_border), label: "Favorite"),
//           BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
//         ],
//       ),
//     );
//   }
// }

// // ---------------- Screens ---------------- //

// class HomeScreenBody extends StatelessWidget {
//   const HomeScreenBody({super.key});

//   final List<Map<String, dynamic>> hotels = const [
//     {
//       "title": "The Grand Majestic",
//       "subtitle": "Luxury hotel in downtown",
//       "price": "\$250/night",
//       "rating": "4.8",
//       "image":
//           "https://lh3.googleusercontent.com/aida-public/AB6AXuAbceWUbt2SiWY9wIMC8JTqHG-BzLs2uiKEDYikVS7BZX5BkdOh3Nrh2CzSud-CKFlh9VTS73c3XYVcdpd7jLlQtQeb2FrSHctwyRLO3U1kMC2ZCWObx4CxOOmajsKsOGsvF7M6ch9qOW-yAPcBFSMPElmF2B9svy1Ger3IAR3HN42agbywHRY6KXRQYYTbBn8kMrRHpgoP1ymyUfwmForxsHskrSfKWzwOE9haybSOMmIu4sQiSOcN88_2A0irITGZMup-7nAZKO4",
//     },
//     {
//       "title": "Cozy Retreat Apartments",
//       "subtitle": "Modern apartments with city views",
//       "price": "\$150/night",
//       "rating": "4.5",
//       "image":
//           "https://lh3.googleusercontent.com/aida-public/AB6AXuAqzhUEJlZ9Yg7eOj9QYNsMFEkaYryzrvN_x_CChkc1oaaAxNrzHWgHHN6pI7Yf46qr0niu2Mxv64WSf0jkxdSbKnjSjGgR5OXQEjIOPLlHTyvzniDb7hVzqB1onNsTkMlIdRSK1ckKbu_orOk8ZZ5pPJo9CQi1BvlGiwffv02hPHIxKgZzV0ZhYk9n8HOvjq5hh72uGvzq27y62YSf-GwdpOHQdEjKvr1sSht-exrHZNd62XfyQY4S7gZ381berS1FAF3FNyDRAQU",
//     },
//     {
//       "title": "Seaside Vacation Rentals",
//       "subtitle": "Beachfront houses for families",
//       "price": "\$300/night",
//       "rating": "4.7",
//       "image":
//           "https://lh3.googleusercontent.com/aida-public/AB6AXuAFlwVEipjMGkvA6rtt47HJtlF9ECWHfx2fu4rqzxP9eBgtY3PJmg2fJe39XNBAJQCbKg8BUyHCGdh6GzQ-Yh7YB5-aahTtiZguY3oChPv_jiaB-E4ZTNLC8a2VRoKuCBNMeHeL6912EYi1jamchCrXKSc1fOhjK2vEjbqmRvGE17LR0HRGsFI1WW2MtftRNSNoXvFFhrDWoqg44q7ngCseZfsFLdr5x97qKwanf6e6M1JEeqf12DUwOwiJfLlOkDzjh5q8wzBmHI0",
//     },
//     {
//       "title": "Tranquil Villa Escapes",
//       "subtitle": "Private villas with pools",
//       "price": "\$400/night",
//       "rating": "4.9",
//       "image":
//           "https://lh3.googleusercontent.com/aida-public/AB6AXuB0zds5e12yrln94NDdkmBbrikw6QXb7Klj1QjqfvZS18mlb3FTOXtL0jdQo2CBN9NWNYdGICekF12nQ3cnaSaXlmmwKMfEL-r_4GjGGJC4WyhDLiOUP4qHx7q280Xlt-5ZTCBn9CW2qQ242GWkuNu7vBHAI9687akaTcATkUj_zcQmjDVhaejxtbRZeb-Lj1Dx65GtUIVwlbT3wt3z5DNfKJXZ98JZiLxr59DrAsdlm5HFeJL0lIAkvUO3IznkmUZM7g8RgO5-MKE",
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//          automaticallyImplyLeading: false,
//         backgroundColor: Colors.white.withOpacity(0.8),
//         elevation: 0,
//         title: const Text("Find your stay"),
//         actions: [
//           Stack(
//             children: [
//               IconButton(
//                 icon: const Icon(Icons.notifications_none),
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen(),));
//                 },
//               ),
//               Positioned(
//                 right: 11,
//                 top: 11,
//                 child: Container(
//                   height: 10,
//                   width: 10,
//                   decoration: BoxDecoration(
//                     color: AppColors.primary2,
//                     shape: BoxShape.circle,
//                     border: Border.all(color: Colors.white, width: 2),
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               // Search bar
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     prefixIcon: const Icon(Icons.search, color: Colors.grey),
//                     hintText: "Where to?",
//                     filled: true,
//                     fillColor: Colors.white,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(30),
//                       borderSide: BorderSide.none,
//                     ),
//                   ),
//                 ),
//               ),

//               // Categories
//               SizedBox(
//                 height: 70,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   children: const [
//                     CategoryTab(
//                         icon: Icons.hotel, label: "Hotels", selected: true),
//                     CategoryTab(icon: Icons.apartment, label: "Apartments"),
//                     CategoryTab(icon: Icons.cabin, label: "Vacation Rentals"),
//                     CategoryTab(icon: Icons.villa, label: "Villas"),
//                     CategoryTab(icon: Icons.beach_access, label: "Resorts"),
//                   ],
//                 ),
//               ),

//               // Hotels list
//               ListView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 padding: const EdgeInsets.all(16),
//                 itemCount: hotels.length,
//                 itemBuilder: (context, index) {
//                   final hotel = hotels[index];
//                   return Padding(
//                     padding: const EdgeInsets.only(bottom: 16),
//                     child: InkWell(
//                       borderRadius: BorderRadius.circular(16),
//                       onTap: () {
//                         // Example: Navigate to a detail page
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => RoomDetailsPage(hotel: hotel),
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
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HotelCard extends StatelessWidget {
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
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       elevation: 4,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Image with favorite button
//           Stack(
//             children: [
//               ClipRRect(
//                 borderRadius:
//                     const BorderRadius.vertical(top: Radius.circular(16)),
//                 child: Image.network(
//                   image,
//                   height: 150,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Positioned(
//                 top: 8,
//                 right: 8,
//                 child: IconButton(
//                   icon: const Icon(Icons.favorite_border, color: Colors.white),
//                   onPressed: () {},
//                 ),
//               ),
//             ],
//           ),
//           // Details
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
//                         title,
//                         style: const TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 16),
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         const Icon(Icons.star, size: 16, color: Colors.amber),
//                         Text(rating),
//                       ],
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 4),
//                 Text(subtitle,
//                     style: const TextStyle(color: AppColors.textLight)),
//                 const SizedBox(height: 6),
//                 Text(
//                   price,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold, color: AppColors.textDark),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CategoryTab extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   final bool selected;

//   const CategoryTab({
//     super.key,
//     required this.icon,
//     required this.label,
//     this.selected = false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 20),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(icon,
//               color: selected ? AppColors.primary2 : AppColors.textLight),
//           const SizedBox(height: 4),
//           Text(
//             label,
//             style: TextStyle(
//               fontWeight: selected ? FontWeight.bold : FontWeight.normal,
//               color: selected ? AppColors.primary2 : AppColors.textLight,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Dummy screens
// // class BookingsScreen extends StatelessWidget {
// //   const BookingsScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return const Center(child: Text("Favorite / Bookings Screen"));
// //   }
// // }

// // class InboxScreen extends StatelessWidget {
// //   const InboxScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return const Center(child: Text("Inbox Screen"));
// //   }
// // }

// // class ProfileScreen extends StatelessWidget {
// //   const ProfileScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return const Center(child: Text("Profile Screen"));
// //   }
// // }

//------------------search abr code-------------------//
// import 'package:flutter/material.dart';
// import 'package:newroombooking/HistoryScreen.dart';
// import 'package:newroombooking/ProfileScreen.dart';
// import 'package:newroombooking/RoomDetailsPage.dart';
// import 'package:newroombooking/favorites_screen.dart';
// import 'package:newroombooking/notification.dart';
// import 'theme.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key,});

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int _currentIndex = 0;

//   // Screens for bottom navigation
//   final List<Widget> _screens = [
//     const HomeScreenBody(
//       location: '',
//     ),
//     const FavoritesScreen(),
//     const HistoryScreen(),
//     const ProfileScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: AppColors.primary2,
//         unselectedItemColor: Colors.grey,
//         backgroundColor: Colors.white,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: _buildNavIcon(Icons.home, 0),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: _buildNavIcon(Icons.favorite_border, 1),
//             label: "Favorite",
//           ),
//           BottomNavigationBarItem(
//             icon: _buildNavIcon(Icons.history, 2),
//             label: "History",
//           ),
//           BottomNavigationBarItem(
//             icon: _buildNavIcon(Icons.person, 3),
//             label: "Profile",
//           ),
//         ],
//       ),
//     );
//   }

//   /// Custom builder for nav icons
//   Widget _buildNavIcon(IconData icon, int index) {
//     final bool isSelected = _currentIndex == index;
//     return Container(
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         color: isSelected ? AppColors.primary2 : Colors.transparent,
//         shape: BoxShape.circle, // 👈 Circle shape
//       ),
//       child: Icon(
//         icon,
//         color: isSelected ? Colors.white : Colors.grey,
//       ),
//     );
//   }
// }

// // ---------------- Home Screen ---------------- //

// class HomeScreenBody extends StatefulWidget {
//   const HomeScreenBody({super.key, required String location});

//   @override
//   State<HomeScreenBody> createState() => _HomeScreenBodyState();
// }

// class _HomeScreenBodyState extends State<HomeScreenBody> {
//   final TextEditingController _searchController = TextEditingController();

//   // All hotels with categories
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
//           "https://lh3.googleusercontent.com/aida-public/AB6AXuAFlwVEipjMGkvA6rtt47HJtlF9ECWHfx2fu4rqzxP9eBgtY3PJmg2fJe39XNBAJQCbKg8BUyHCGdh6GzQ-Yh7YB5-aahTtiZguY3oChPv_jiaB-E4ZTNLC8a2VRoKuCBNMeHeL6912EYi1jamchCrXKSc1fOhjK2vEjbqmRvGE17LR0HRGsFI1WW2MtftRNSNoXvFFhrDWoqg44q7ngCseZfsFLdr5x97qKwanf6e6M1JEeqf12DUwOwiJfLlOkDzjh5q8wzBmHI0",
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
//               (selectedCategory == "All" ||
//                   hotel["category"] == selectedCategory) &&
//               (hotel["title"].toLowerCase().contains(query.toLowerCase()) ||
//                   hotel["subtitle"]
//                       .toLowerCase()
//                       .contains(query.toLowerCase())))
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
//                       .contains(_searchController.text.toLowerCase()) ||
//                   hotel["subtitle"]
//                       .toLowerCase()
//                       .contains(_searchController.text.toLowerCase())))
//           .toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.white.withOpacity(0.8),
//         elevation: 0,
//         title: const Text("Find your stay"),
//         actions: [
//           Stack(
//             children: [
//               IconButton(
//                 icon: const Icon(Icons.notifications_none),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const NotificationScreen()),
//                   );
//                 },
//               ),
//               Positioned(
//                 right: 11,
//                 top: 11,
//                 child: Container(
//                   height: 10,
//                   width: 10,
//                   decoration: BoxDecoration(
//                     color: AppColors.primary2,
//                     shape: BoxShape.circle,
//                     border: Border.all(color: Colors.white, width: 2),
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               // Search bar
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                 child: TextField(
//                   controller: _searchController,
//                   onChanged: _filterHotels,
//                   decoration: InputDecoration(
//                     prefixIcon: const Icon(Icons.search, color: Colors.grey),
//                     hintText: "Where to?",
//                     filled: true,
//                     fillColor: Colors.white,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(30),
//                       borderSide: BorderSide.none,
//                     ),
//                   ),
//                 ),
//               ),

//               // Categories
//               SizedBox(
//                 height: 50,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   children: [
//                     CategoryTab(
//                       icon: Icons.all_inclusive,
//                       label: "All",
//                       selected: selectedCategory == "All",
//                       onTap: () => _selectCategory("All"),
//                     ),
//                     CategoryTab(
//                       icon: Icons.hotel,
//                       label: "Hotels",
//                       selected: selectedCategory == "Hotels",
//                       onTap: () => _selectCategory("Hotels"),
//                     ),
//                     CategoryTab(
//                       icon: Icons.apartment,
//                       label: "Apartments",
//                       selected: selectedCategory == "Apartments",
//                       onTap: () => _selectCategory("Apartments"),
//                     ),
//                     CategoryTab(
//                       icon: Icons.cabin,
//                       label: "Vacation Rentals",
//                       selected: selectedCategory == "Vacation Rentals",
//                       onTap: () => _selectCategory("Vacation Rentals"),
//                     ),
//                     CategoryTab(
//                       icon: Icons.villa,
//                       label: "Villas",
//                       selected: selectedCategory == "Villas",
//                       onTap: () => _selectCategory("Villas"),
//                     ),
//                   ],
//                 ),
//               ),

//               // Hotels list
//               ListView.builder(
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
//                             builder: (context) => RoomDetailsPage(hotel: hotel),
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
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HotelCard extends StatelessWidget {
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
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       elevation: 4,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Image with favorite button
//           Stack(
//             children: [
//               ClipRRect(
//                 borderRadius:
//                     const BorderRadius.vertical(top: Radius.circular(16)),
//                 child: Image.network(
//                   image,
//                   height: 150,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Positioned(
//                 top: 8,
//                 right: 8,
//                 child: IconButton(
//                   icon: const Icon(Icons.favorite_border, color: Colors.white),
//                   onPressed: () {},
//                 ),
//               ),
//             ],
//           ),
//           // Details
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
//                         title,
//                         style: const TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 16),
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         const Icon(Icons.star, size: 16, color: Colors.amber),
//                         Text(rating),
//                       ],
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 4),
//                 Text(subtitle,
//                     style: const TextStyle(color: AppColors.textLight)),
//                 const SizedBox(height: 6),
//                 Text(
//                   price,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold, color: AppColors.textDark),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

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
//           borderRadius: BorderRadius.circular(20), // 👈 Rounded shape
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

//   // Screens for bottom navigation
//   late final List<Widget> _screens;

//   @override
//   void initState() {
//     super.initState();
//     _screens = [
//       HomeScreenBody(
//         searchController: _searchController,
//       ),
//       const FavoritesScreen(),
//       const HistoryScreen(),
//       const ProfileScreen(),
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
//               title: const Text("Find your stay"),
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
//       body: _screens[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: AppColors.primary2,
//         unselectedItemColor: Colors.grey,
//         backgroundColor: Colors.white,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: _buildNavIcon(Icons.home, 0),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: _buildNavIcon(Icons.favorite_border, 1),
//             label: "Favorite",
//           ),
//           BottomNavigationBarItem(
//             icon: _buildNavIcon(Icons.history, 2),
//             label: "History",
//           ),
//           BottomNavigationBarItem(
//             icon: _buildNavIcon(Icons.person, 3),
//             label: "Profile",
//           ),
//         ],
//       ),
//     );
//   }

//   /// Custom builder for nav icons
//   Widget _buildNavIcon(IconData icon, int index) {
//     final bool isSelected = _currentIndex == index;
//     return Container(
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         color: isSelected ? AppColors.primary2 : Colors.transparent,
//         shape: BoxShape.circle,
//       ),
//       child: Icon(
//         icon,
//         color: isSelected ? Colors.white : Colors.grey,
//       ),
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
//   // All hotels with categories
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
//           "https://lh3.googleusercontent.com/aida-public/AB6AXuAFlwVEipjMGkvA6rtt47HJtlF9ECWHfx2fu4rqzxP9eBgtY3PJmg2fJe39XNBAJQCbKg8BUyHCGdh6GzQ-Yh7YB5-aahTtiZguY3oChPv_jiaB-E4ZTNLC8a2VRoKuCBNMeHeL6912EYi1jamchCrXKSc1fOhjK2vEjbqmRvGE17LR0HRGsFI1WW2MtftRNSNoXvFFhrDWoqg44q7ngCseZfsFLdr5x97qKwanf6e6M1JEeqf12DUwOwiJfLlOkDzjh5q8wzBmHI0",
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
//               (selectedCategory == "All" ||
//                   hotel["category"] == selectedCategory) &&
//               (hotel["title"].toLowerCase().contains(query.toLowerCase()) ||
//                   hotel["subtitle"]
//                       .toLowerCase()
//                       .contains(query.toLowerCase())))
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
//                 ),
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
//             ListView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               padding: const EdgeInsets.all(16),
//               itemCount: filteredHotels.length,
//               itemBuilder: (context, index) {
//                 final hotel = filteredHotels[index];
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 16),
//                   child: InkWell(
//                     borderRadius: BorderRadius.circular(16),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => RoomDetailsPage(),
//                         ),
//                       );
//                     },
//                     child: HotelCard(
//                       title: hotel["title"],
//                       subtitle: hotel["subtitle"],
//                       price: hotel["price"],
//                       rating: hotel["rating"],
//                       image: hotel["image"],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HotelCard extends StatelessWidget {
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
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       elevation: 4,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Image with favorite button
//           Stack(
//             children: [
//               ClipRRect(
//                 borderRadius:
//                     const BorderRadius.vertical(top: Radius.circular(16)),
//                 child: Image.network(
//                   image,
//                   height: 150,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Positioned(
//                 top: 8,
//                 right: 8,
//                 child: IconButton(
//                   icon: const Icon(Icons.favorite_border, color: Colors.white),
//                   onPressed: () {},
//                 ),
//               ),
//             ],
//           ),
//           // Details
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
//                         title,
//                         style: const TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 16),
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         const Icon(Icons.star, size: 16, color: Colors.amber),
//                         Text(rating),
//                       ],
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 4),
//                 Text(subtitle,
//                     style: const TextStyle(color: AppColors.textLight)),
//                 const SizedBox(height: 6),
//                 Text(
//                   price,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold, color: AppColors.textDark),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

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

import 'package:flutter/material.dart';
import 'package:newroombooking/HistoryScreen.dart';
import 'package:newroombooking/ProfileScreen.dart';
import 'package:newroombooking/RoomDetailsPage.dart';
import 'package:newroombooking/favorites_screen.dart';
import 'package:newroombooking/notification.dart';
import 'theme.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final TextEditingController _searchController = TextEditingController();

  // Screens for bottom navigation
  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      HomeScreenBody(
        searchController: _searchController,
      ),
      const FavoritesScreen(),
      const HistoryScreen(),
      const ProfileScreen(),
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
                      right: 11,
                      top: 11,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: AppColors.primary2,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          : null,
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primary2,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: _buildNavIcon(Icons.home, 0),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: _buildNavIcon(Icons.favorite_border, 1),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: _buildNavIcon(Icons.history, 2),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: _buildNavIcon(Icons.person, 3),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  /// Custom builder for nav icons
  Widget _buildNavIcon(IconData icon, int index) {
    final bool isSelected = _currentIndex == index;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primary2 : Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: isSelected ? Colors.white : Colors.grey,
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
  // All hotels with categories
  final List<Map<String, dynamic>> hotels = [
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
          "https://lh3.googleusercontent.com/aida-public/AB6AXuAFlwVEipjMGkvA6rtt47HJtlF9ECWHfx2fu4rqzxP9eBgtY3PJmg2fJe39XNBAJQCbKg8BUyHCGdh6GzQ-Yh7YB5-aahTtiZguY3oChPv_jiaB-E4ZTNLC8a2VRoKuCBNMeHeL6912EYi1jamchCrXKSc1fOhjK2vEjbqmRvGE17LR0HRGsFI1WW2MtftRNSNoXvFFhrDWoqg44q7ngCseZfsFLdr5x97qKwanf6e6M1JEeqf12DUwOwiJfLlOkDzjh5q8wzBmHI0",
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
              (hotel["title"].toLowerCase().contains(widget.searchController.text.toLowerCase()) ||
                  hotel["subtitle"].toLowerCase().contains(widget.searchController.text.toLowerCase())))
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextField(
                controller: widget.searchController,
                onChanged: _filterHotels,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  hintText: "Where to?",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  hintStyle: AppTheme.lightTheme.textTheme.bodyMedium,
                ),
                style: AppTheme.lightTheme.textTheme.bodyLarge,
              ),
            ),

            // Categories
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
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

            // Hotels list with animated switcher
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              switchInCurve: Curves.easeOut,
              switchOutCurve: Curves.easeIn,
              child: ListView.builder(
                key: ValueKey<String>("${selectedCategory}-${widget.searchController.text}"),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(16),
                itemCount: filteredHotels.length,
                itemBuilder: (context, index) {
                  final hotel = filteredHotels[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
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

class HotelCard extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image with favorite button
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.network(
                  image,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: IconButton(
                  icon: const Icon(Icons.favorite_border, color: Colors.white),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          // Details
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: AppTheme.lightTheme.textTheme.labelSmall!
                            .copyWith(fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.star, size: 16, color: Colors.amber),
                        Text(rating, style: AppTheme.lightTheme.textTheme.bodyMedium),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(subtitle, style: AppTheme.lightTheme.textTheme.bodyMedium),
                const SizedBox(height: 6),
                Text(
                  price,
                  style: AppTheme.lightTheme.textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold , color: AppColors.primary2),
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
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: selected ? AppColors.primary2 : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 20,
              color: selected ? Colors.white : Colors.black87,
            ),
            const SizedBox(width: 6),
            Text(
              label,
              style: TextStyle(
                color: selected ? Colors.white : Colors.black87,
                fontWeight: selected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
