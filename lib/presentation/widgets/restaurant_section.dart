import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_text_styles.dart';
import '../../data/models/restaurant_model/restaurant_model.dart';

class RestaurantSection extends StatelessWidget {
  final List<RestaurantModel>? restaurants;
  final VoidCallback? onSeeAllTapped;

  const RestaurantSection({
    super.key,
    this.restaurants,
    this.onSeeAllTapped,
  });

  @override
  Widget build(BuildContext context) {
    final restaurantList = restaurants ?? _getDefaultRestaurants();

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
            GestureDetector(
              onTap: onSeeAllTapped,
              child: Row(
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
            ),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 320, // Increased height for larger cards
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: restaurantList.length,
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              return RestaurantCard(restaurant: restaurantList[index]);
            },
          ),
        ),
      ],
    );
  }

  List<RestaurantModel> _getDefaultRestaurants() {
    return [
      const RestaurantModel(
        name: 'Rose Garden Restaurant',
        description: 'Delicious burgers and wings with premium quality ingredients',
        address: '123 Food Street, Culinary District, City 12345',
        phone: '+1234567890',
        email: 'info@rosegarden.com',
        openingTime: '10:00',
        closingTime: '22:00',
        rating: 4.7,
        ratingCount: 200,
        avgPrepareTime: 20,
        deliveryCost: 0.0,
        freeDelivery: true,
        minOrderAmount: 10.00,
        cuisine: ['Burger', 'Chicken', 'Riche', 'Wings'],
        image: 'assets/images/rose_garden.jpg',
      ),
      const RestaurantModel(
        name: 'Spice Kitchen',
        description: 'Authentic Indian cuisine with traditional spices and flavors',
        address: '456 Spice Avenue, Culinary District, City 23456',
        phone: '+1234567891',
        email: 'info@spicekitchen.com',
        openingTime: '11:00',
        closingTime: '23:00',
        rating: 4.5,
        ratingCount: 180,
        avgPrepareTime: 25,
        deliveryCost: 50.0,
        freeDelivery: false,
        minOrderAmount: 12.00,
        cuisine: ['Indian', 'Curry', 'Rice', 'Naan'],
        image: 'assets/images/rose_garden.jpg',
      ),
      const RestaurantModel(
        name: 'Pizza Palace',
        description: 'Authentic Italian pizza and pasta restaurant',
        address: '789 Food Street, Culinary District, City 67890',
        phone: '+1234567892',
        email: 'info@pizzapalace.com',
        openingTime: '11:00',
        closingTime: '23:00',
        rating: 4.8,
        ratingCount: 150,
        avgPrepareTime: 15,
        deliveryCost: 0.0,
        freeDelivery: true,
        minOrderAmount: 15.00,
        cuisine: ['Pizza', 'Italian', 'Pasta', 'Salad'],
        image: 'assets/images/rose_garden.jpg',
      ),
    ];
  }
}

class RestaurantCard extends StatelessWidget {
  final RestaurantModel restaurant;
  final VoidCallback? onTap;

  const RestaurantCard({
    super.key,
    required this.restaurant,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
            _buildImageSection(),
            _buildContentSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildImageSection() {
    return Container(
      height: 180, // Increased image height
      decoration: const BoxDecoration(
        color: AppColors.inputBackground,
        borderRadius: BorderRadius.only(
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
          restaurant.imagePath ?? '',
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
    );
  }

  Widget _buildContentSection() {
    return Padding(
      padding: const EdgeInsets.all(20), // Increased padding for more space
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            restaurant.name ?? '',
            style: AppTextStyles.bodyLarge.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 18, // Increased font size for restaurant name
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 6), // Increased spacing
          Text(
            restaurant.category ?? '',
            style: AppTextStyles.bodySmall.copyWith(
              fontSize: 14, // Increased font size for category
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 16), // Increased spacing
          _buildInfoRow(),
        ],
      ),
    );
  }

  Widget _buildInfoRow() {
    return Row(
      children: [
        _buildRatingSection(),
        const SizedBox(width: 16),
        _buildDeliveryFeeSection(),
        const SizedBox(width: 16),
        _buildDeliveryTimeSection(),
      ],
    );
  }

  Widget _buildRatingSection() {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: AppColors.orange,
          size: 18, // Increased icon size
        ),
        const SizedBox(width: 4),
        Text(
          restaurant.ratingString,
          style: AppTextStyles.bodySmall.copyWith(
            color: AppColors.primaryText,
            fontWeight: FontWeight.w600,
            fontSize: 14, // Increased font size
          ),
        ),
      ],
    );
  }

  Widget _buildDeliveryFeeSection() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10, // Increased horizontal padding
        vertical: 6, // Increased vertical padding
      ),
      decoration: BoxDecoration(
        color: restaurant.isFreeDelivery
            ? AppColors.orange.withOpacity(0.1)
            : AppColors.secondaryText.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        restaurant.deliveryFee ?? '',
        style: AppTextStyles.caption.copyWith(
          color: restaurant.isFreeDelivery
              ? AppColors.orange
              : AppColors.secondaryText,
          fontWeight: FontWeight.w600,
          fontSize: 12, // Increased font size
        ),
      ),
    );
  }

  Widget _buildDeliveryTimeSection() {
    return Row(
      children: [
        Icon(
          Icons.access_time,
          color: AppColors.secondaryText,
          size: 18, // Increased icon size
        ),
        const SizedBox(width: 4),
        Text(
          restaurant.deliveryTime ?? '',
          style: AppTextStyles.bodySmall.copyWith(
            fontSize: 14, // Increased font size
          ),
        ),
      ],
    );
  }
}