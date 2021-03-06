import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/screens/productOverviewScreen.dart';
import '../providers/auth.dart';
import 'package:shop/screens/ordersScreen.dart';
import '../screens/userProductScreen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text("Hey :)"),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            onTap: (){
              Navigator.of(context).pushReplacementNamed(ProductOverviewScreen.routeName);
            },
            leading: IconButton(icon: Icon(Icons.shop), onPressed: (){
            }),
            title: Text("Shop"),
          ),
          Divider(),
          ListTile(
            onTap: (){
              Navigator.of(context).pushReplacementNamed(OrdersScreen.routeName);
            },
            leading: IconButton(icon: Icon(Icons.payment), onPressed: (){
            }),
            title: Text("Orders"),

          ),
          Divider(),
          ListTile(
            leading: IconButton(icon: Icon(Icons.edit), onPressed: (){
              Navigator.of(context).pushReplacementNamed(UserProductScreen.routeName);
            }),
            title: Text("Manage products"),
          ),
          Divider(),
          ListTile(
            leading: IconButton(icon: Icon(Icons.exit_to_app), onPressed: (){
              //Navigator.of(context).pushReplacementNamed(UserProductScreen.routeName);
              Navigator.of(context).pop();
              Provider.of<Auth>(context).logout();
            }),
            title: Text("Manage products"),
          ),
        ],
      ),
    );
  }
}


