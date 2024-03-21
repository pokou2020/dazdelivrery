import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../data/data.dart';
import '../delivery.dart';

class DeliveryList extends ConsumerStatefulWidget {
  final DeliveryStatus status;
  final String title;

  const DeliveryList({
    Key? key,
    required this.title,
    this.status = DeliveryStatus.done,
  }) : super(key: key);

  @override
  _DeliveryListState createState() => _DeliveryListState();
}

class _DeliveryListState extends ConsumerState<DeliveryList> {
  //DataResponse<Delivery>? response;
  //late DeliveryController deliveryController;

  @override
  void initState() {
    //deliveryController = ref.read(deliveryControllerProvider);
    super.initState();
    //WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //  getDeliveries();
    //});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        Gap(2.h),
        Expanded(
          child: _buildView(),
        ),
      ],
    );
  }

  getDeliveries() async {
    //response = null;
    //setState(() {});
    //response = await deliveryController.getDeliveries(widget.status);
    //setState(() {});
  }

  Widget _buildView() {
    /*if (response == null) {
      return const Center(
        child: LoadingIndicator(),
      );
    }

    if (response!.hasError) {
      return Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(response!.message ?? ''),
            Gap(2.h),
            InkWell(
              onTap: () {
                getDeliveries();
              },
              child: const Icon(Icons.refresh),
            )
          ],
        ),
      );
    }

    var deliveries = response!.data;

    if (deliveries.isEmpty) {
      return Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Aucune course'),
            Gap(2.h),
            InkWell(
              onTap: () {
                getDeliveries();
              },
              child: const Icon(Icons.refresh),
            )
          ],
        ),
      );
    }*/

    return ListView.builder(
      //itemCount: deliveries.length,
      itemCount: 2,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        //var delivery = deliveries[index];
        return DeliveryItem(
          //delivery: delivery,
          onTap: () {
            //deliveryController.updateDelivery(delivery);
            //Navigator.pushNamed(context, DeliveryDetailPage.name);
          },
        );
      },
    );
  }
}
