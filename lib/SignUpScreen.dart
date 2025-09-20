// import 'package:flutter/material.dart';

// class SignUpScreen extends StatelessWidget {
//   const SignUpScreen({super.key});

//   Widget buildTextField({
//     required IconData icon,
//     required String hint,
//     bool obscure = false,
//   }) {
//     return TextField(
//       obscureText: obscure,
//       decoration: InputDecoration(
//         prefixIcon: Icon(icon, color: Colors.grey),
//         hintText: hint,
//         filled: true,
//         fillColor: Colors.white,
//         contentPadding: const EdgeInsets.symmetric(vertical: 15),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: const BorderSide(color: Color(0xFFCBD5E1)),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: const BorderSide(color: Color(0xFF1193D4)),
//         ),
//       ),
//     );
//   }

//   Widget buildSocialButton({
//     required String label,
//     required Widget icon,
//     required VoidCallback onTap,
//   }) {
//     return Expanded(
//       child: ElevatedButton.icon(
//         onPressed: onTap,
//         icon: icon,
//         label: Text(label),
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.white,
//           foregroundColor: Colors.black87,
//           shadowColor: Colors.black12,
//           elevation: 1,
//           padding: const EdgeInsets.symmetric(vertical: 12),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(8),
//             side: const BorderSide(color: Color(0xFFCBD5E1)),
//           ),
//           textStyle: const TextStyle(fontWeight: FontWeight.w600),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF1F5F9), // bg-slate-50
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(24),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Back button and title
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconButton(
//                     icon: const Icon(Icons.arrow_back, color: Colors.grey),
//                     onPressed: () {},
//                   ),
//                   const Text(
//                     'Sign Up',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(width: 48), // for spacing
//                 ],
//               ),
//               const SizedBox(height: 32),

//               // Text fields
//               buildTextField(icon: Icons.mail_outline, hint: 'Email'),
//               const SizedBox(height: 16),
//               buildTextField(
//                   icon: Icons.lock_outline, hint: 'Password', obscure: true),
//               const SizedBox(height: 16),
//               buildTextField(icon: Icons.person_outline, hint: 'First name'),
//               const SizedBox(height: 16),
//               buildTextField(icon: Icons.person_outline, hint: 'Last name'),
//               const SizedBox(height: 24),

//               // Create account button
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFF1193D4),
//                     padding: const EdgeInsets.symmetric(vertical: 15),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8)),
//                     textStyle: const TextStyle(
//                         fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   child: const Text('Create Account'),
//                 ),
//               ),
//               const SizedBox(height: 24),

//               // OR divider
//               Row(
//                 children: [
//                   Expanded(child: Divider(color: Colors.grey[300])),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 8),
//                     child: Text(
//                       'Or sign up with',
//                       style: TextStyle(color: Colors.grey, fontSize: 12),
//                     ),
//                   ),
//                   Expanded(child: Divider(color: Colors.grey[300])),
//                 ],
//               ),
//               const SizedBox(height: 16),

//               // Social buttons
//               Wrap(
//                 spacing: 12,
//                 runSpacing: 12,
//                 children: [
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * 0.48,
//                     child: buildSocialButton(
//                       label: 'Google',
//                       icon: Image.network(
//                           'https://upload.wikimedia.org/wikipedia/commons/5/53/Google_%22G%22_Logo.png',
//                           width: 20,
//                           height: 20),
//                       onTap: () {},
//                     ),
//                   ),
//                   // const SizedBox(width: 12),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * 0.48,
//                     child: buildSocialButton(
//                       label: 'Facebook',
//                       icon: Image.network(
//                           'https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_%282019%29.png',
//                           width: 20,
//                           height: 20),
//                       onTap: () {},
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 32),

//               // Sign in link
//               Center(
//                 child: RichText(
//                   text: TextSpan(
//                     text: 'Already have an account? ',
//                     style: const TextStyle(color: Colors.grey, fontSize: 14),
//                     children: [
//                       TextSpan(
//                         text: 'Sign In',
//                         style: const TextStyle(
//                             color: Color(0xFF1193D4),
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:newroombooking/SignInScreen.dart';
import 'package:newroombooking/theme.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  Widget buildTextField({
    required String label,
    required String hint,
    bool obscure = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black87)),
        const SizedBox(height: 5),
        TextField(
          obscureText: obscure,
          decoration: InputDecoration(
            hintText: hint,
            // filled: true,
            // fillColor: const Color(0xFFF1F5F9), // bg-slate-50
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                  color: Color(0xFFD1D5DB)), // border-slate-300
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              // borderSide:
              //     const BorderSide(color: AppColors.primary2), // primary-500
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSocialButton({
    required String label,
    required String imageUrl,
    required VoidCallback onTap,
  }) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: Color(0xFFD1D5DB)),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min, // shrink to fit content
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageUrl,
              width: 20,
              height: 20,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.error, size: 20),
            ),
            const SizedBox(width: 10),
            Flexible(child: Text(label, overflow: TextOverflow.ellipsis)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back button
              // IconButton(
              //   icon: const Icon(Icons.arrow_back, color: Colors.grey),
              //   onPressed: () {},
              // ),
              const SizedBox(height: 16),

              // Title and subtitle
              const Text(
                'Create an account',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text(
                "Let's get you started!",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 32),

              // Form fields
              buildTextField(label: 'Email', hint: 'you@example.com'),
              const SizedBox(height: 16),
              buildTextField(
                  label: 'Password', hint: '••••••••', obscure: true),
              const SizedBox(height: 16),

              // Terms & Conditions checkbox
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    activeColor: AppColors.primary,
                  ),
                  Flexible(
                    child: RichText(
                      text: TextSpan(
                        text: 'I agree to the ',
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 14),
                        children: [
                          TextSpan(
                            text: 'Terms and Conditions',
                            style: const TextStyle(
                                color: AppColors.primary2,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Create account button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInScreen(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary2,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  child: const Text('Create Account',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
              ),
              const SizedBox(height: 24),

              // Divider OR
              Row(
                children: [
                  const Expanded(child: Divider(color: Color(0xFFE5E7EB))),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text('OR',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500)),
                  ),
                  const Expanded(child: Divider(color: Color(0xFFE5E7EB))),
                ],
              ),
              const SizedBox(height: 24),

              // Social login buttons
              buildSocialButton(
                label: 'Sign up with Google',
                imageUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/5/53/Google_%22G%22_Logo.png',
                // textColor: Colors.black87,
                onTap: () {},
              ),
              const SizedBox(height: 16),
              buildSocialButton(
                label: 'Sign up with Facebook',
                imageUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_%282019%29.png',
                // textColor: Colors.black87,
                onTap: () {},
              ),
              const SizedBox(height: 32),

              // Sign in link
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                    children: const [
                      TextSpan(
                        text: 'Sign In',
                        style: TextStyle(
                            color: AppColors.primary2,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
