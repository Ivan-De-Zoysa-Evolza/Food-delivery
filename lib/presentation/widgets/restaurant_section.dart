import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_text_styles.dart';

class RestaurantSection extends StatelessWidget {
  const RestaurantSection({super.key});

  @override
  Widget build(BuildContext context) {
    final restaurants = [
      RestaurantItem(
        name: 'Rose Garden Restaurant',
        category: 'Burger • Chicken • Riche • Wings',
        rating: '4.7',
        deliveryFee: 'Free',
        deliveryTime: '20 min',
        imagePath: 'assets/images/rose_garden.jpg',
      ),
      RestaurantItem(
        name: 'Spice Kitchen',
        category: 'Indian • Curry • Rice • Naan',
        rating: '4.5',
        deliveryFee: 'LKR 50',
        deliveryTime: '25 min',
        imagePath: 'assets/images/rose_garden.jpg',
      ),
      RestaurantItem(
        name: 'Pizza Palace',
        category: 'Pizza • Italian • Pasta • Salad',
        rating: '4.8',
        deliveryFee: 'Free',
        deliveryTime: '15 min',
        imagePath: 'assets/images/rose_garden.jpg',
      ),
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Open Restaurants',
              style: AppTextStyles.h4.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Text(
                  'See All',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.secondaryText,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 4),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.secondaryText,
                  size: 14,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 320, // Increased height for larger cards
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: restaurants.length,
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              return RestaurantCard(restaurant: restaurants[index]);
            },
          ),
        ),
      ],
    );
  }
}

class RestaurantItem {
  final String name;
  final String category;
  final String rating;
  final String deliveryFee;
  final String deliveryTime;
  final String imagePath;

  RestaurantItem({
    required this.name,
    required this.category,
    required this.rating,
    required this.deliveryFee,
    required this.deliveryTime,
    required this.imagePath,
  });
}

class RestaurantCard extends StatelessWidget {
  final RestaurantItem restaurant;

  const RestaurantCard({
    super.key,
    required this.restaurant,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320, // Increased width for better readability
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180, // Increased image height
            decoration: BoxDecoration(
              color: AppColors.inputBackground,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Image.asset(
                restaurant.imagePath,
                width: double.infinity,
                height: 180, // Updated to match container height
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  // Fallback to icon if image fails to load
                  return Center(
                    child: Icon(
                      Icons.restaurant,
                      size: 48, // Increased icon size
                      color: AppColors.secondaryText,
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20), // Increased padding for more space
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  restaurant.name,
                  style: AppTextStyles.bodyLarge.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 18, // Increased font size for restaurant name
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6), // Increased spacing
                Text(
                  restaurant.category,
                  style: AppTextStyles.bodySmall.copyWith(
                    fontSize: 14, // Increased font size for category
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 16), // Increased spacing
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: AppColors.orange,
                          size: 18, // Increased icon size
                        ),
                        const SizedBox(width: 4),
                        Text(
                          restaurant.rating,
                          style: AppTextStyles.bodySmall.copyWith(
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w600,
                            fontSize: 14, // Increased font size
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 16),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10, // Increased horizontal padding
                        vertical: 6, // Increased vertical padding
                      ),
                      decoration: BoxDecoration(
                        color: restaurant.deliveryFee == 'Free'
                            ? AppColors.orange.withOpacity(0.1)
                            : AppColors.secondaryText.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        restaurant.deliveryFee,
                        style: AppTextStyles.caption.copyWith(
                          color: restaurant.deliveryFee == 'Free'
                              ? AppColors.orange
                              : AppColors.secondaryText,
                          fontWeight: FontWeight.w600,
                          fontSize: 12, // Increased font size
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: AppColors.secondaryText,
                          size: 18, // Increased icon size
                        ),
                        const SizedBox(width: 4),
                        Text(
                          restaurant.deliveryTime,
                          style: AppTextStyles.bodySmall.copyWith(
                            fontSize: 14, // Increased font size
                          ),
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
    );
  }
}