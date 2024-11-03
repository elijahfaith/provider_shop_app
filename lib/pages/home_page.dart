import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:provider_shop_app/component/product_item_tile.dart';
import 'package:provider_shop_app/model/cart_model.dart';
import 'package:provider_shop_app/pages/cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
      }, 
      backgroundColor: Colors.black,
      child: Icon(Icons.shopping_bag, color: Colors.white,),),
     
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 48,
              ),
              const Text(
                "Good Morning",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 4,
              ),
              Text("Let's order fresh PRODUCTS for you",
                  style: GoogleFonts.notoSerif(
                      fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Fresh items",
                style: TextStyle(fontSize: 16),
              ),
              Expanded(
                  child: Consumer<CartModel>(builder : (context, value, child){
                    return GridView.builder(
                      itemCount: value.shopItems.length,
                      
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1 /1.3),
                      itemBuilder: (context, index) {
                        return ProductItemTile(
                          itemName: value.shopItems[index][0], 
                          itemPrice: value.shopItems[index][1], 
                          imagepath: value.shopItems[index][2],
                          color: value.shopItems[index][3],
                          onPressed: (){
                            Provider.of<CartModel>(context, listen: false).addItemToCart(index);
                          },
                        );
                      });
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
