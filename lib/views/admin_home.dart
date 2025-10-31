import 'package:ecommerce_admin_app/containers/dashboard_text.dart';
import 'package:ecommerce_admin_app/containers/home_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Admin Dashboard"),
      
      ),
      body:  SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 260,
          padding:  EdgeInsets.all(12),
          margin:  EdgeInsets.only(left: 10,right:  10,bottom: 10),
          decoration:  BoxDecoration(color:  Colors.deepPurple.shade100,borderRadius:  BorderRadius.circular(10)),
            child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DashboardText(keyword: "Total Categories", value: "100",),
                  DashboardText(keyword: "Total Products", value: "100",),
                  DashboardText(keyword: "Total Orders", value: "100",),
                  DashboardText(keyword: "Order Not Shipped yet", value: "100",),
                  DashboardText(keyword: "Order Shipped", value: "100",),
                  DashboardText(keyword: "Order Delivered", value: "100",),
                  DashboardText(keyword: "Order Cancelled", value: "100",),
                 
                ],
              ),
            ),
        
            // Buttons for admins
            Row(
        children: [
          HomeButton(onTap: (){
            Navigator.pushNamed(context,"/orders");
          }, name: "Orders"),
          HomeButton(onTap: (){
            Navigator.pushNamed(context,"/products");
          }, name: "Products"),
        ],
            ),
            Row(
        children: [
          HomeButton(onTap: (){
            Navigator.pushNamed(context,"/promos",arguments: {"promo":true});
          }, name: "Promos"),
          HomeButton(onTap: (){
             Navigator.pushNamed(context,"/promos",arguments: {"promo":false});
          }, name: "Banners"),
        ],
            ),
            Row(
        children: [
          HomeButton(onTap: (){
            Navigator.pushNamed(context,"/category");
          }, name: "Categories"),
          HomeButton(onTap: (){
            Navigator.pushNamed(context, "/coupons");
          }, name: "Coupons"),
        ],
            ),
        ],),
      ),
    );
  }
}