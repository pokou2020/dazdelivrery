import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../gen/assets.gen.dart';
import '../../../data/data.dart';
import '../../../theme/theme.dart';
import '../delivery.dart';

class DeliveryItem extends StatelessWidget {
  final Delivery? delivery;
  final Function onTap;

  const DeliveryItem({
    Key? key,
    this.delivery,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        width: 70.w,
        padding: EdgeInsets.all(4.w),
        margin: EdgeInsets.only(right: 4.w),
        color: AppColors.grey2,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2.w),
                  ),
                  padding: EdgeInsets.all(2.w),
                  child: Assets.images.phPackage.image(width: 6.w),
                ),
                Gap(2.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Colis",
                        style: TextStyle(fontSize: 13.sp),
                      ),
                      Gap(0.5.h),
                      Text(
                        delivery?.packageType ?? 'Vetement',
                        style: TextStyle(fontSize: 10.sp),
                      ),
                    ],
                  ),
                ),
                if (delivery?.status != null)
                  Row(
                    children: [
                      Gap(2.w),
                      DeliveryStatusView(status: delivery!.status!),
                    ],
                  ),
              ],
            ),
            Gap(2.h),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Livré le',
                          style: TextStyle(
                            fontSize: 10.sp,
                          ),
                        ),
                        Text(
                          delivery?.deliveryDate ?? '16 mars 2022',
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Référence',
                          style: TextStyle(
                            fontSize: 10.sp,
                          ),
                        ),
                        Text(
                          delivery?.reference ?? '#1274GB53C',
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Gap(2.h),
            Row(
              children: [
                Assets.images.avatar.image(width: 10.w),
                Gap(2.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        delivery?.deliverName ?? 'Hervé Kouassi',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gap(0.5.h),
                      Text(
                        'Livreur',
                        style: TextStyle(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(2.w),
                  child: Assets.images.biArrowRight.image(width: 4.w),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
