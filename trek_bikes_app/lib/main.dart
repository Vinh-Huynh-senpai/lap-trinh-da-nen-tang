import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:trek_bikes_app/cart_page.dart';
import 'package:trek_bikes_app/details_page.dart';
import 'package:trek_bikes_app/home_page.dart';
import 'package:trek_bikes_app/invoice_details_page.dart';
import 'package:trek_bikes_app/invoice_page.dart';
import 'package:trek_bikes_app/login_page.dart';
import 'package:trek_bikes_app/profile_page.dart';
import 'package:trek_bikes_app/register_page.dart';
void main() async{
  await dotenv.load(fileName:".env");
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: CategoryPage(title: "Categories"),
      // home: RegisterPage(title: "Register"),
      initialRoute: '/',
      routes: {
        "/": (context) => HomePage(title: 'Trek Bikes'),
        "/register": (context) => RegisterPage(title: 'Register'),
        "/login": (context) => LoginPage(title: 'Login'),
        "/profile": (context) => ProfilePage(title: 'Profile'),
        "/details": (context) => DetailsPage(title: 'Details'),
        '/cart': (context) => CartPage(title: 'Your Cart'),
        '/invoice': (context) => InvoicePage(title: 'Invoice'),
        '/invoice/details': (context) =>
            InvoiceDetailsPage(title: 'Invoice Details'),
      },
    );
  }
}
