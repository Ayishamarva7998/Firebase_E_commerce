
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_login/controller/bottombar_provider.dart';
import 'package:firebase_login/controller/category_provider.dart';
import 'package:firebase_login/controller/homepage_provider.dart';
import 'package:firebase_login/controller/wishlist_provider.dart';
import 'package:firebase_login/firebase_options.dart';

import 'package:firebase_login/views/main_page.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>BottomBarProvider()),
        ChangeNotifierProvider(create: (context)=>Wishlist()),
        ChangeNotifierProvider(create: (context)=>HomeProvider()),
        ChangeNotifierProvider(create: (context)=>CategoryProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage (),
      ),
    );
  }
}
