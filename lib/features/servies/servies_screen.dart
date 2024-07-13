import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiesScreen extends StatefulWidget {
  const ServiesScreen({super.key});

  @override
  State<ServiesScreen> createState() => _ServiesScreenState();
}

class _ServiesScreenState extends State<ServiesScreen> {
  final List<Map<String, dynamic>> items = List.generate(10, (index) {
    return {
      'price': '\$100',
      'title': 'Logo Design -Graphic Design Graphic Design',
      'rating': 4.5,
      'reviews': 20,
      'imageUrl': 'assets/Product pic.png' // Replace with actual image URLs
    };
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 17.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Services",
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 300.h,
                child: ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Container(
                          width: 200.w, // Fixed width for the cards
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    item['imageUrl'],
                                    width: double.infinity,
                                    height: 150.h,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    bottom: 10.h,
                                    left: 10.w,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w, vertical: 5.h),
                                      color: Colors.green,
                                      child: Text(
                                        item['price'],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.sp),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0.w),
                                child: Text(
                                  item['title'],
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 8.0.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 20.w),
                                    Text('(${item['rating']})',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Colors.amber)),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    SvgPicture.asset("assets/Group.svg"),
                                    Text('${item['reviews']}',
                                        style: TextStyle(fontSize: 14.sp)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20.h),
              Text("Popular Services",
                  style:
                      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold)),
              SizedBox(height: 20.h),
              Container(
                height: 300.h,
                child: ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Container(
                          width: 200.w, // Fixed width for the cards
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    item['imageUrl'],
                                    width: double.infinity,
                                    height: 150.h,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    bottom: 10.h,
                                    left: 10.w,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w, vertical: 5.h),
                                      color: Colors.green,
                                      child: Text(
                                        item['price'],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.sp),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0.w),
                                child: Text(
                                  item['title'],
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 8.0.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 20.w),
                                    Text('(${item['rating']})',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Colors.amber)),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    SvgPicture.asset("assets/Group.svg"),
                                    Text('${item['reviews']}',
                                        style: TextStyle(fontSize: 14.sp)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
