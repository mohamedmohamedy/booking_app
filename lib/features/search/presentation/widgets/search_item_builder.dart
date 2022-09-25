import 'package:flutter/material.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../get_hotels/domain/entities/get_hotels_entities.dart';

class SearchItemBuilder extends StatelessWidget {
  const SearchItemBuilder({
    Key? key,
    required this.hotelsDataEntity,
  }) : super(key: key);

  final HotelDataEntity hotelsDataEntity;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          hotelsDataEntity.hotelImages.isNotEmpty
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(AppSize.s5),
                  child: Image(
                    height: AppSize.s150,
                    image: NetworkImage(
                      'http://api.mahmoudtaha.com/images/${hotelsDataEntity.hotelImages[0].image}',
                    ),
                    fit: BoxFit.cover,
                  ),
                )
              : const SizedBox(
                  height: AppSize.s150,
                  child: Center(
                    child: Text(AppStrings.noImage),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppPadding.p8,
              horizontal: AppPadding.p12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotelsDataEntity.name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: AppSize.s4),
                    TextWithIcon(
                      icon: Icons.location_on,
                      text: hotelsDataEntity.address,
                    ),
                    const SizedBox(height: AppSize.s4),
                    TextWithIcon(
                      icon: Icons.star,
                      text: hotelsDataEntity.rate,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$${hotelsDataEntity.price}',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: AppSize.s4),
                    Text(
                      AppStrings.perNight,
                      style: Theme.of(context).textTheme.displaySmall,
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

class TextWithIcon extends StatelessWidget {
  const TextWithIcon({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: AppSize.s15,
          color: ColorManager.bGreen,
        ),
        const SizedBox(width: AppSize.s4),
        Text(
          text,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ],
    );
  }
}