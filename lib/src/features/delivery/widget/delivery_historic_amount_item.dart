import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../gen/assets.gen.dart';
import '../../../theme/theme.dart';
import '../delivery.dart';

class DeliveryHistoricAmountItem extends StatefulWidget {
  final int index;

  const DeliveryHistoricAmountItem({
    required this.index,
  });

  @override
  State<DeliveryHistoricAmountItem> createState() =>
      _DeliveryHistoricAmountItemState();
}

class _DeliveryHistoricAmountItemState
    extends State<DeliveryHistoricAmountItem> {
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
                return _HistoricAmountItem(isDelivered: isDelivered);
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

class _HistoricAmountItem extends StatefulWidget {
  final bool isDelivered;

  const _HistoricAmountItem({
    required this.isDelivered,
  });

  @override
  State<_HistoricAmountItem> createState() => _HistoricAmountItemState();
}

class _HistoricAmountItemState extends State<_HistoricAmountItem> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      },
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
                        color: !widget.isDelivered ? Colors.white : AppColors.orange,
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
                      child: Assets.images.file.svg(width: 4.w, color: widget.isDelivered ? Colors.white : AppColors.green),
                    ),
                    Gap(4.w),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Colis #129792134",
                            style: TextStyle(
                              fontSize: 12.sp,
                            ),
                          ),
                          Gap(1.w),
                          Text(
                            "Angré 7eme tranche",
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
                              fontSize: 12.sp,
                            ),
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
