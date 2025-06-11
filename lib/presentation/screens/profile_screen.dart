import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_text_styles.dart';
import '../widgets/profile_menu_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.go('/home'),
        ),
        title: Text(
          'Profile',
          style: AppTextStyles.h4.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz, color: Colors.black),
            onPressed: () {
              // Handle more options
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Profile Header
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFB4A3),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'John Doe',
                      style: AppTextStyles.h4.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Menu Items
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    ProfileMenuItem(
                      icon: Icons.person_outline,
                      iconColor: const Color(0xFFFF6B35),
                      title: 'Personal Info',
                      onTap: () {
                        // Navigate to personal info
                      },
                    ),
                    const Divider(height: 1, color: Color(0xFFF5F5F5)),
                    ProfileMenuItem(
                      icon: Icons.location_on_outlined,
                      iconColor: const Color(0xFF6B73FF),
                      title: 'Addresses',
                      onTap: () {
                        // Navigate to addresses
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    ProfileMenuItem(
                      icon: Icons.shopping_cart_outlined,
                      iconColor: const Color(0xFF00B4D8),
                      title: 'Cart',
                      onTap: () {
                        // Navigate to cart
                      },
                    ),
                    const Divider(height: 1, color: Color(0xFFF5F5F5)),
                    ProfileMenuItem(
                      icon: Icons.favorite_outline,
                      iconColor: const Color(0xFFE91E63),
                      title: 'Favourite',
                      onTap: () {
                        // Navigate to favourites
                      },
                    ),
                    const Divider(height: 1, color: Color(0xFFF5F5F5)),
                    ProfileMenuItem(
                      icon: Icons.notifications_outlined,
                      iconColor: const Color(0xFFFFA726),
                      title: 'Notifications',
                      onTap: () {
                        // Navigate to notifications
                      },
                    ),
                    const Divider(height: 1, color: Color(0xFFF5F5F5)),
                    ProfileMenuItem(
                      icon: Icons.credit_card_outlined,
                      iconColor: const Color(0xFF42A5F5),
                      title: 'Payment Method',
                      onTap: () {
                        // Navigate to payment methods
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    ProfileMenuItem(
                      icon: Icons.help_outline,
                      iconColor: const Color(0xFFFF6B35),
                      title: 'FAQs',
                      onTap: () {
                        // Navigate to FAQs
                      },
                    ),
                    const Divider(height: 1, color: Color(0xFFF5F5F5)),
                    ProfileMenuItem(
                      icon: Icons.rate_review_outlined,
                      iconColor: const Color(0xFF26C6DA),
                      title: 'User Reviews',
                      onTap: () {
                        // Navigate to user reviews
                      },
                    ),
                    const Divider(height: 1, color: Color(0xFFF5F5F5)),
                    ProfileMenuItem(
                      icon: Icons.settings_outlined,
                      iconColor: const Color(0xFF9C27B0),
                      title: 'Settings',
                      onTap: () {
                        // Navigate to settings
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ProfileMenuItem(
                  icon: Icons.logout,
                  iconColor: const Color(0xFFE57373),
                  title: 'Log Out',
                  onTap: () {
                    // Handle logout
                    _showLogoutDialog(context);
                  },
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Log Out'),
          content: const Text('Are you sure you want to log out?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                context.go('/login');
              },
              child: const Text('Log Out'),
            ),
          ],
        );
      },
    );
  }
}