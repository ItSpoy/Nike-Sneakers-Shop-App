import 'package:e_commerce_app/pages/cart_page.dart';
import 'package:e_commerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/components/bottom_nav_bar.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  // this selected index controls th btom nav bar
  int _selectedIndex = 0;
  // this meth update selec index
  void navigatebottomBar( int index){
    setState(() {
      _selectedIndex = index ;
    });
  }
  final List<Widget> _pages = [
    // shop page 
    const ShopPage(),
    // Cart Page 
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange:(index) =>  navigatebottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder:(context) => IconButton(
          icon: const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Icon(
              Icons.menu , 
              color: Colors.black
            ),
          ),
          onPressed: (){
            Scaffold.of(context).openDrawer();
          },
        ),)
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // logo 
            DrawerHeader(
              child: 
              Image.asset(
                'lib/images/nike.png',
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(
                color: Colors.grey[900],
              ),
            ),
            // Other Pages
            const Padding(
              padding:  EdgeInsets.only(left: 25.0),
              child:  ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  //textAlign: TextAlign.center,
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(left: 25.0),
              child:  ListTile(
                leading: Icon(Icons.info),
                title: Text(
                  //textAlign: TextAlign.center,
                  "About",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
              ),
            ),
          ],
        ),
        const Padding(
          padding:  EdgeInsets.only(left: 25.0 , bottom: 25.0),
          child:  ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              //textAlign: TextAlign.center,
              "Logout",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              ),
          ),
        ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}