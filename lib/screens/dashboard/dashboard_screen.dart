import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/components/header.dart';
import 'package:admin/screens/dashboard/components/my_files.dart';
import 'package:admin/screens/dashboard/components/recent_files.dart';
import 'package:admin/screens/dashboard/components/storage_details.dart';
import 'package:flutter/material.dart';
import 'package:admin/constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Header(),
          SizedBox(height: defaultPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    MyFiles(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    RecentFiles(),
                    if (Responsive.isMobile(context))
                      SizedBox(
                        height: defaultPadding,
                      ),
                    if (Responsive.isMobile(context)) StorageDetails(),
                  ],
                ),
              ),
              if (!Responsive.isMobile(context))
                SizedBox(
                  width: defaultPadding,
                ),
              if (!Responsive.isMobile(context))
                Expanded(
                  flex: 2,
                  child: StorageDetails(),
                ),
            ],
          )
        ],
      ),
    );
  }
}
