import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ml_project/core/cubit/check_cancellation_cubit.dart';
import 'package:ml_project/core/themes/colors.dart';
import 'package:ml_project/core/themes/text_styles.dart';
import 'package:ml_project/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocProvider(
        create: (context) => CheckCancellationCubit(),
        child: MaterialApp(
          theme: ThemeData(
              appBarTheme: AppBarTheme(
            backgroundColor: ColorsManager.blue,
            titleTextStyle: AppTextStyles.font20WhiteW600,
            centerTitle: true,
            iconTheme: const IconThemeData(color: ColorsManager.white),
          )),
          title: 'SureShip App',
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
