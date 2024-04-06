import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../gen/assets.gen.dart';
import '../../../theme/theme.dart';

class DazCashItem extends StatefulWidget {
  final int index;

  const DazCashItem({
    required this.index,
  });

  @override
  State<DazCashItem> createState() => _DeliveryHistoricAmountItemState();
}

class _DeliveryHistoricAmountItemState extends State<DazCashItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1${widget.index} Septembre 2023",
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.grey4,
              ),
            ),
            Gap(1.h),
            ListView.separated(
              itemBuilder: (context, index) {
                bool isDelivered = index % 3 == 0;
                return _DazCashItem(isDelivered: isDelivered);
              },
              separatorBuilder: (context, index) => Gap(2.h),
              itemCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            )
          ],
        ),
      ],
    );
  }
}

class _DazCashItem extends StatefulWidget {
  final bool isDelivered;

  const _DazCashItem({
    required this.isDelivered,
  });

  @override
  State<_DazCashItem> createState() => _DazCashItemState();
}

class _DazCashItemState extends State<_DazCashItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            // shadow color
                            spreadRadius: 0.3,
                            blurRadius: 7,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(2.w),
                      alignment: Alignment.center,
                      child: widget.isDelivered
                          ? Assets.images.solarCircleTopUpBold
                              .svg(color: Colors.black)
                          : Assets.images.mingcuteTransferLine
                              .svg(color: Colors.black),
                    ),
                    Gap(4.w),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.isDelivered ? "Recharge" : "Transfert",
                            style: TextStyle(
                              fontSize: 12.sp,
                            ),
                          ),
                          Gap(1.w),
                          Text(
                            widget.isDelivered
                                ? "O123244444"
                                : "Kouamé Innocent",
                            style: TextStyle(
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "1 500 FCFA",
                            style: TextStyle(
                                fontSize: 12.sp, color: AppColors.green),
                          ),
                          Gap(1.w),
                          Text(
                            "11:20",
                            style: TextStyle(
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
