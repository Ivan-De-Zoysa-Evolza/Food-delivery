import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_text_styles.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      CategoryItem(
        name: 'Pizza',
        price: 'LKR 800',
        imagePath: 'assets/images/pizza.jpg',
      ),
      CategoryItem(
        name: 'Burger',
        price: 'LKR 200',
        imagePath: 'assets/images/burger.jpg',
      ),
      CategoryItem(
        name: 'Pizza',
        price: 'LKR 300',
        imagePath: 'assets/images/burger.jpg',
      ),
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'All Categories',
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
        const SizedBox(height: 26),
        SizedBox(
          height: 200, // Increased to accommodate 100x100 image
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              return CategoryCard(category: categories[index]);
            },
          ),
        ),
      ],
    );
  }
}

class CategoryItem {
  final String name;
  final String price;
  final String imagePath;

  CategoryItem({
    required this.name,
    required this.price,
    required this.imagePath,
  });
}

class CategoryCard extends StatelessWidget {
  final CategoryItem category;

  const CategoryCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, // Increased to accommodate larger image
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16), // Slightly increased
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12), // Added padding for better spacing
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100, // Increased to 100x100
              height: 100, // Increased to 100x100
              decoration: BoxDecoration(
                color: AppColors.inputBackground,
                borderRadius: BorderRadius.circular(50), // Updated to match new size
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  category.imagePath,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    // Fallback to icon if image fails to load
                    return Icon(
                      Icons.fastfood,
                      color: AppColors.secondaryText,
                      size: 40, // Increased icon size for larger container
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 12), // Increased spacing
            Text(
              category.name,
              style: AppTextStyles.bodyMedium.copyWith(
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis, // Prevent text overflow
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              'Starting',
              style: AppTextStyles.caption.copyWith(
                color: AppColors.secondaryText,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              category.price,
              style: AppTextStyles.caption.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.primaryText,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis, // Prevent text overflow
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}