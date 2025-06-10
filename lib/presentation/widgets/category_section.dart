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
        price: 'Starting',
        imagePath: 'assets/images/pizza2.png',
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
          height: 120,
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
      width: 100,
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.inputBackground,
              borderRadius: BorderRadius.circular(24),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                category.imagePath,
                width: 48,
                height: 48,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  // Fallback to icon if image fails to load
                  return Icon(
                    Icons.fastfood,
                    color: AppColors.secondaryText,
                    size: 24,
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            category.name,
            style: AppTextStyles.bodyMedium.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            'Starting',
            style: AppTextStyles.caption,
          ),
          Text(
            category.price,
            style: AppTextStyles.caption,
          ),
        ],
      ),
    );
  }
}