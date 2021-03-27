// import 'dart:convert';
// import 'package:flutter/material.dart';

// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// import 'ml.dart';

// class DrawerWidget extends StatelessWidget {
//   const DrawerWidget({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // Data v = jsonDecode(Storage.getValue(Constants.USER_DATA));

//     return SafeArea(
//       child: MultiLevelDrawer(
//         backgroundColor: Colors.white,
//         rippleColor: Colors.white,
//         subMenuBackgroundColor: Colors.grey.shade100,
//         divisionColor: Colors.grey,
//         header: Container(
//           child: Container(
//               margin: EdgeInsets.only(
//                 top: 20.h,
//               ),
//               padding: EdgeInsets.only(
//                 bottom: 20.h,
//               ),
//               decoration: BoxDecoration(
//                 border: Border(
//                   bottom: BorderSide(color: Colors.grey, width: 1.0),
//                 ),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                     width: 60.w,
//                     height: 60.h,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: CachedNetworkImage(
//                         width: double.infinity,
//                         fit: BoxFit.cover,
//                         imageUrl: "v.data.picture",
//                         placeholder: (context, url) => Image.asset(
//                           "assets/images/user.jpg",
//                           // width: 60.w,
//                           // height: 60.h,
//                         ),
//                         errorWidget: (context, url, error) => Icon(Icons.error),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10.0,
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       InkWell(
//                         onTap: () {
//                           // Get.toNamed(Routes.PROFILE);
//                         },
//                         child: Container(
//                           alignment: Alignment.topRight,
//                           child: SvgWidget(
//                             path: 'assets/svg/edit.svg',
//                           ),
//                         ),
//                       ),
//                       Text(
//                         "${"v?.data?.firstName"}" ?? "Aniket Sharma",
//                         overflow: TextOverflow.ellipsis,
//                         style: AppTextStyle.mediumStyle(
//                           color: AppColors.kPrimaryColor,
//                           fontSize: 14.sp,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       Text(
//                         "${"v?.data?.mobile"}" ?? "+91 9876543210",
//                         overflow: TextOverflow.ellipsis,
//                         style: AppTextStyle.mediumStyle(
//                           color: Colors.black,
//                           fontSize: 12.sp,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       // Text(
//                       //   "example@gmail.com",
//                       //   style: AppTextStyle.mediumStyle(
//                       //     color: Colors.black,
//                       //     fontSize: 12.sp,
//                       //     fontWeight: FontWeight.w600,
//                       //   ),
//                       // ),
//                     ],
//                   ),
//                 ],
//               )),
//         ),
//         children: [
//           MLMenuItem(
//               trailing: SvgWidget(
//                 path: 'assets/svg/arrow_right.svg',
//                 color: Colors.black,
//               ),
//               content: Text(
//                 Strings.dMyOrders,
//                 style: AppTextStyle.mediumStyle(
//                   color: Colors.black,
//                   fontSize: 16.sp,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               onClick: () {
//                 Get.toNamed(
//                   Routes.COLLECTIONS,
//                   arguments: NavigationTansactions.allTansactions,
//                 );
//               }),
//           MLMenuItem(
//             trailing: SvgWidget(
//               path: 'assets/svg/arrow_right.svg',
//               color: Colors.black,
//             ),
//             content: Text(
//               Strings.dMyEarnings,
//               style: AppTextStyle.mediumStyle(
//                 color: Colors.black,
//                 fontSize: 16.sp,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             onClick: () {
//               Get.toNamed(
//                 Routes.WORK_HOURS,
//                 arguments: NavigationTansactions.allTansactions,
//               );
//             },
//           ),
//           MLMenuItem(
//             trailing: SvgWidget(
//               path: 'assets/svg/arrow_right.svg',
//               color: Colors.black,
//             ),
//             content: Text(
//               Strings.dMyWorkHistory,
//               style: AppTextStyle.mediumStyle(
//                 color: Colors.black,
//                 fontSize: 16.sp,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             onClick: () {},
//           ),
//           MLMenuItem(
//             trailing: SvgWidget(
//               path: 'assets/svg/arrow_right.svg',
//               color: Colors.black,
//             ),
//             content: Text(
//               Strings.dAboutUs,
//               style: AppTextStyle.mediumStyle(
//                 color: Colors.black,
//                 fontSize: 16.sp,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             onClick: () {
//               Get.toNamed('/about-us');
//             },
//           ),
//           MLMenuItem(
//             trailing: SvgWidget(
//               path: 'assets/svg/arrow_right.svg',
//               color: Colors.black,
//             ),
//             content: Text(
//               Strings.dFaqs,
//               style: AppTextStyle.mediumStyle(
//                 color: Colors.black,
//                 fontSize: 16.sp,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             onClick: () {},
//           ),
//           MLMenuItem(
//             trailing: SvgWidget(
//               path: 'assets/svg/arrow_right.svg',
//               color: Colors.black,
//             ),
//             content: Text(
//               Strings.settings,
//               style: AppTextStyle.mediumStyle(
//                 color: Colors.black,
//                 fontSize: 16.sp,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             onClick: () {
//               Get.toNamed('/settings');
//             },
//           ),
//           MLMenuItem(
//             alignment: Alignment.bottomLeft,
//             margin: EdgeInsets.only(
//               top: ScreenUtil().screenHeight / 4,
//             ),
//             trailing: SvgWidget(
//               path: 'assets/svg/exit.svg',
//               color: Colors.black,
//               height: 16,
//             ),
//             content: Text(
//               'Logout',
//               style: AppTextStyle.mediumStyle(
//                 color: Colors.black,
//                 fontSize: 16.sp,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             onClick: () {
//               Storage.clearStorage();
//               Get.offNamed(Routes.LOGIN);
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
