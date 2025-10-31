import 'package:ecommerce_admin_app/firebase_options.dart';
import 'package:ecommerce_admin_app/views/admin_home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    
    options: DefaultFirebaseOptions.currentPlatform,
   );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
   return MaterialApp(
  title: 'Flutter Demo',
  theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
   useMaterial3: true,
   ),
      // **ส่วนที่แก้ไข/เพิ่มเติม:** กำหนดหน้าจอเริ่มต้นด้วย home
   home: const AdminHome(),
     routes:{
    // สามารถลบเส้นทางนี้ออกได้ หากคุณไม่ต้องการใช้ Navigator.pushNamed(context, '/AdminHome')
   // แต่ถ้าต้องการใช้ก็เก็บไว้ได้
    "/AdminHome": (context) => const AdminHome() 
   },
    );
   }
}