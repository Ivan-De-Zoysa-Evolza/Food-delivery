import 'package:flutter/material.dart';
import '../widgets/delivery_header.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/category_section.dart';
import '../widgets/restaurant_section.dart';
import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const AppDrawer(), // Add the drawer here
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const DeliveryHeader(),
              const SizedBox(height: 24),
              const SearchBarWidget(),
              const SizedBox(height: 32),
              const CategorySection(),
              const SizedBox(height: 32),
              const RestaurantSection(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}