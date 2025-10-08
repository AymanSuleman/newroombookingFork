// import 'package:flutter/material.dart';
// import 'package:newroombooking/ConfirmAndPayPage.dart';
// import 'package:newroombooking/theme.dart';

// class PaymentDetailsPage extends StatelessWidget {
//   const PaymentDetailsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF8FAFC), // bg-slate-50
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.close, color: Colors.black87),
//           onPressed: () => Navigator.pop(context),
//         ),
//         centerTitle: true,
//         title: const Text(
//           "Payment Details",
//           style: TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//             color: AppColors.normaltext, // slate-900
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               /// Saved Cards
//               const Text(
//                 "Saved Cards",
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFF0F172A),
//                 ),
//               ),
//               const SizedBox(height: 12),

//               _buildCardOption(
//                 logo:
//                     "https://lh3.googleusercontent.com/aida-public/AB6AXuAIRsBBQ46QQUP73YwfhsknBB_WghAjRlCdW0bHhb42-ArJJZuCIZGvA1_ePYSHsrltMpA57BUxHI29woDHCDPGmhfV2Pq0rDxyQ6IE4Infx6ff0xorkyOu8ZvYnsxd0TbxuSwOvys03G-0h9XRVpfu-2kzuJndGTSV6MU-NwfUuNSSVCK99CL9ch3V7ZyrbJ1f4ot9D1HcAIsveHGKC30bCmFh493pAwAvSTcGTwRbWLjIGOlEqtXxGF0hDAzYCJl_VYkckNRxqSo",
//                 title: "Visa ending in 4567",
//                 subtitle: "Expires 08/26",
//                 selected: true,
//               ),
//               const SizedBox(height: 8),
//               _buildCardOption(
//                 logo:
//                     "https://lh3.googleusercontent.com/aida-public/AB6AXuBpK1HTY0gbumgZR7fna2-IjyXvVMKhbHah4REsa7GOfB2Q9mm148p_1BOninkZJHAnLr9JWDIHr6ppJff_EcMetljBnt6LUnoeTSam17sdamqZ0VW7AJGmfkoJn49WgB8wvMUipBQLO5hiJQR32mk7hpYk6u4pGNefuSR6hEnQN4l_K9jj68lqGtVOGOPl20WtWkLBF1dhN9g_ZUKpLYJrbb2ecx6LL8m0v_hMFDLG0OywfBw1UWaK-Jhh6OVL1jcFEu9cDBlh16Y",
//                 title: "Mastercard ending in 8901",
//                 subtitle: "Expires 11/25",
//                 selected: false,
//               ),

//               const SizedBox(height: 24),

//               /// Add New Card
//               const Text(
//                 "Add a New Card",
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFF0F172A),
//                 ),
//               ),
//               const SizedBox(height: 12),

//               _buildTextField("Card Number", "0000 0000 0000 0000",
//                   icon: Icons.credit_card),
//               const SizedBox(height: 12),

//               Row(
//                 children: [
//                   Expanded(
//                     child: _buildTextField("Expiry Date", "MM/YY"),
//                   ),
//                   const SizedBox(width: 12),
//                   Expanded(
//                     child: _buildTextField("CVV", "123"),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 24),

//               /// Mobile Payment
//               const Text(
//                 "Mobile Payment",
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFF0F172A),
//                 ),
//               ),
//               const SizedBox(height: 12),

//               OutlinedButton.icon(
//                 onPressed: () {
//                   // Navigator.push(
//                   //     context,
//                   //     MaterialPageRoute(
//                   //         builder: (context) => PaymentDetailsPage()));
//                 },
//                 icon: const Icon(Icons.apple, size: 24, color: Colors.black),
//                 label: const Text("Pay with Apple Pay",
//                     style: TextStyle(color: Colors.black)),
//                 style: OutlinedButton.styleFrom(
//                   minimumSize: const Size(double.infinity, 56),
//                   side: const BorderSide(color: Color(0xFFD1D5DB)), // slate-300
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 12),
//               OutlinedButton.icon(
//                 onPressed: () {},
//                 icon: Image.network(
//                   "https://developers.google.com/identity/images/g-logo.png",
//                   height: 24,
//                   width: 24,
//                 ),
//                 label: const Text("Pay with Google Pay"),
//                 style: OutlinedButton.styleFrom(
//                   minimumSize: const Size(double.infinity, 56),
//                   side: const BorderSide(color: Color(0xFFD1D5DB)), // slate-300
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),

//       /// Save Payment Method Button
//       bottomNavigationBar: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: ElevatedButton(
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => ConfirmAndPayPage()));
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: AppColors.primary2,
//               minimumSize: const Size(double.infinity, 56),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               elevation: 4,
//             ),
//             child: const Text("Save Payment Method",
//                 style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: AppColors.iconBg)),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildCardOption({
//     required String logo,
//     required String title,
//     required String subtitle,
//     required bool selected,
//   }) {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         border: Border.all(color: const Color(0xFFE2E8F0)), // slate-200
//         borderRadius: BorderRadius.circular(12),
//         color: Colors.white,
//       ),
//       child: Row(
//         children: [
//           Image.network(logo, height: 24),
//           const SizedBox(width: 12),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(title,
//                     style: const TextStyle(
//                         fontWeight: FontWeight.w500,
//                         color: Color(0xFF1E293B))), // slate-800
//                 Text(subtitle,
//                     style: const TextStyle(
//                         fontSize: 12, color: Color(0xFF64748B))), // slate-500
//               ],
//             ),
//           ),
//           Radio(
//             value: true,
//             groupValue: selected,
//             onChanged: (val) {},
//             activeColor: AppColors.primary2, // blue-600
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildTextField(String label, String hint, {IconData? icon}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(label,
//             style: const TextStyle(
//                 fontSize: 13,
//                 fontWeight: FontWeight.w500,
//                 color: Color(0xFF334155))), // slate-700
//         const SizedBox(height: 4),
//         TextField(
//           decoration: InputDecoration(
//             hintText: hint,
//             prefixIcon: icon != null
//                 ? Icon(icon, color: const Color(0xFF94A3B8))
//                 : null,
//             filled: true,
//             fillColor: Colors.white,
//             contentPadding:
//                 const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
//             enabledBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color: Color(0xFFD1D5DB)),
//               borderRadius: BorderRadius.circular(8),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color: Color(0xFF2563EB)),
//               borderRadius: BorderRadius.circular(8),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:newroombooking/ConfirmAndPayPage.dart';
import 'package:newroombooking/theme.dart';

class PaymentDetailsPage extends StatelessWidget {
  const PaymentDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC), // bg-slate-50
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          "Payment Details",
          style: textTheme.titleLarge?.copyWith(color: AppColors.normaltext),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Saved Cards
              Text(
                "Saved Cards",
                style: textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold, color: AppColors.textDark),
              ),
              const SizedBox(height: 12),

              _buildCardOption(
                context,
                logo:
                    "https://lh3.googleusercontent.com/aida-public/AB6AXuAIRsBBQ46QQUP73YwfhsknBB_WghAjRlCdW0bHhb42-ArJJZuCIZGvA1_ePYSHsrltMpA57BUxHI29woDHCDPGmhfV2Pq0rDxyQ6IE4Infx6ff0xorkyOu8ZvYnsxd0TbxuSwOvys03G-0h9XRVpfu-2kzuJndGTSV6MU-NwfUuNSSVCK99CL9ch3V7ZyrbJ1f4ot9D1HcAIsveHGKC30bCmFh493pAwAvSTcGTwRbWLjIGOlEqtXxGF0hDAzYCJl_VYkckNRxqSo",
                title: "Visa ending in 4567",
                subtitle: "Expires 08/26",
                selected: true,
              ),
              const SizedBox(height: 8),
              _buildCardOption(
                context,
                logo:
                    "https://lh3.googleusercontent.com/aida-public/AB6AXuBpK1HTY0gbumgZR7fna2-IjyXvVMKhbHah4REsa7GOfB2Q9mm148p_1BOninkZJHAnLr9JWDIHr6ppJff_EcMetljBnt6LUnoeTSam17sdamqZ0VW7AJGmfkoJn49WgB8wvMUipBQLO5hiJQR32mk7hpYk6u4pGNefuSR6hEnQN4l_K9jj68lqGtVOGOPl20WtWkLBF1dhN9g_ZUKpLYJrbb2ecx6LL8m0v_hMFDLG0OywfBw1UWaK-Jhh6OVL1jcFEu9cDBlh16Y",
                title: "Mastercard ending in 8901",
                subtitle: "Expires 11/25",
                selected: false,
              ),

              const SizedBox(height: 24),

              /// Add New Card
              Text(
                "Add a New Card",
                style: textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold, color: AppColors.textDark),
              ),
              const SizedBox(height: 12),

              _buildTextField(context, "Card Number", "0000 0000 0000 0000",
                  icon: Icons.credit_card),
              const SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: _buildTextField(context, "Expiry Date", "MM/YY"),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildTextField(context, "CVV", "123"),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              /// Mobile Payment
              Text(
                "Mobile Payment",
                style: textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold, color: AppColors.textDark),
              ),
              const SizedBox(height: 12),

              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.apple, size: 24, color: Colors.black),
                label: Text("Pay with Apple Pay",
                    style: textTheme.bodyLarge?.copyWith(color: Colors.black)),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 56),
                  side: const BorderSide(color: Color(0xFFD1D5DB)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Image.network(
                  "https://developers.google.com/identity/images/g-logo.png",
                  height: 24,
                  width: 24,
                ),
                label: Text("Pay with Google Pay",
                    style: textTheme.bodyLarge),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 56),
                  side: const BorderSide(color: Color(0xFFD1D5DB)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      /// Save Payment Method Button
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ConfirmAndPayPage()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary2,
              minimumSize: const Size(double.infinity, 56),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 4,
            ),
            child: Text("Save Payment Method",
                style: textTheme.labelLarge?.copyWith(color: AppColors.iconBg)),
          ),
        ),
      ),
    );
  }

  Widget _buildCardOption(BuildContext context,
      {required String logo,
      required String title,
      required String subtitle,
      required bool selected}) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE2E8F0)),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Image.network(logo, height: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w500, color: AppColors.textDark)),
                Text(subtitle,
                    style: textTheme.bodyMedium?.copyWith(
                        fontSize: 12, color: AppColors.textLight)),
              ],
            ),
          ),
          Radio(
            value: true,
            groupValue: selected,
            onChanged: (val) {},
            activeColor: AppColors.primary2,
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(BuildContext context, String label, String hint,
      {IconData? icon}) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: textTheme.bodyMedium?.copyWith(
                fontSize: 13, fontWeight: FontWeight.w500, color: AppColors.textDark)),
        const SizedBox(height: 4),
        TextField(
          style: textTheme.bodyLarge,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: textTheme.bodyMedium?.copyWith(color: AppColors.textLight),
            prefixIcon: icon != null ? Icon(icon, color: AppColors.textLight) : null,
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFFD1D5DB)),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color:AppColors.primary2),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}
