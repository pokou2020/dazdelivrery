import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../data/data.dart';

class DeliveryStatusView extends StatelessWidget {
  final DeliveryStatus status;

  const DeliveryStatusView({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color = _getStatusColor();
    return Container(
      decoration: BoxDecoration(
        color: color.shade50,
        borderRadius: BorderRadius.circular(4.w),
      ),
      child: Text(
        _getStatusText(),
        style: TextStyle(
          color: color.shade800,
          fontSize: 10.sp,
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 1.h,
        horizontal: 3.w,
      ),
    );
  }

  String _getStatusText() {
    if (status == DeliveryStatus.running) {
      return "En cours";
    }
    if (status == DeliveryStatus.done) {
      return "Terminée";
    }
    return "Annulée";
  }

  MaterialColor _getStatusColor() {
    if (status == DeliveryStatus.running) {
      return Colors.orange;
    }
    if (status == DeliveryStatus.cancelled) {
      return Colors.red;
    }
    return Colors.blue;
  }
}
