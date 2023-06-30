import 'package:flutter/material.dart';
import 'package:coteccons_app/modules/home/home.dart';
import 'package:coteccons_app/modules/home/widgets/task_widget.dart';
import 'package:coteccons_app/routes/app_pages.dart';
import 'package:coteccons_app/shared/shared.dart';

import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Công việc",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Expanded(
          child: SafeArea(
            top: false,
            child: RefreshIndicator(
                onRefresh: controller.fetchData,
                child: Obx(() {
                  return ListView(
                    padding: EdgeInsets.zero,
                    children: controller.tasks
                        .map((task) => TaskWidget(
                              task: task,
                              onTap: () {
                                Get.toNamed(Routes.TASK_DETAIL,
                                    arguments: task);
                              },
                            ))
                        .toList(),
                  );
                })),
          ),
        ),
      ]),
    );
  }
}
