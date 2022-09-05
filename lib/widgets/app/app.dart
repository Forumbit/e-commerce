import 'package:e_commerce/Theme/app_colors.dart';
import 'package:e_commerce/widgets/home_store/home_store_widget.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home_store': (context) => HomeStoreWidget(),
      },
      initialRoute: '/home_store',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'MarkPro',
              bodyColor: AppColors.customBlue, //<-- SEE HERE
              displayColor: AppColors.customBlue, //<-- SEE HERE
            ),
      ),
    );
  }
}
