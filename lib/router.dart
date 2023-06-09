
import 'package:flutter/material.dart';
import 'package:my_souaq/app/models/orders_model.dart';
import 'package:my_souaq/app/models/product_model.dart';
import 'package:my_souaq/app/screens/add_product.dart';
import 'package:my_souaq/app/screens/address_screen.dart';
import 'package:my_souaq/app/screens/admin_screen.dart';
import 'package:my_souaq/app/screens/auth_screen.dart';
import 'package:my_souaq/app/screens/category_deal_screen.dart';
import 'package:my_souaq/app/screens/home_screen.dart';
import 'package:my_souaq/app/screens/order_details_screen.dart';
import 'package:my_souaq/app/screens/product_details_screen.dart';
import 'package:my_souaq/app/screens/search_screen.dart';
import 'package:my_souaq/app/widgets/bottom_bar.dart';
Route<dynamic> generateRoute(RouteSettings routeSettings)
{
  switch(routeSettings.name)
  {
    case AuthScreen.routName:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => const AuthScreen()
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => const HomeScreen()
      );

    case BottomBar.routeName:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => const BottomBar()
      );

    case AddProduct.routeName:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => const AddProduct()
      );

    case CategoryDeal.routeName:
      var  category = routeSettings.arguments as String;
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) =>  CategoryDeal(
              category: category
          ),
      );

    case SearchScreen.routeName:
      var  text = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) =>   SearchScreen(
          searchText: text,
        ),
      );

    case ProductDetailScreen.routeName:
      var product = routeSettings.arguments as Product;
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => ProductDetailScreen(
            product: product,
          )
      );
    case AddressScreen.routeName:
      var totalAmount = routeSettings.arguments as String;
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) =>  AddressScreen(
            totalAmount: totalAmount,
          ),
      );
    case OrderDetailsScreen.routeName:
      var order = routeSettings.arguments as Orders;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) =>  OrderDetailsScreen(
          order: order,
        ),
      );
    case AdminScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const AdminScreen()
      );
    default: return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => const Scaffold(
            body: Center(
              child: Text(
                'No Data Here :(',
              ),
            ),
          )
      );
  }
}

