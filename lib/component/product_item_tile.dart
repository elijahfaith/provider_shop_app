import 'package:flutter/material.dart';

class ProductItemTile extends StatelessWidget {

    final String itemName;
    final String itemPrice;
    final String imagepath;
    final color;
    void Function()? onPressed;


   ProductItemTile({super.key, required this.itemName, required this.itemPrice, required this.imagepath, this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(color: color[100], 
        borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
                //image
             Image.asset(imagepath, height: 88,),
             SizedBox(height: 5,),

            Text(itemName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),

            MaterialButton(onPressed: onPressed,
            color: color[800],
            child: Text(itemPrice, style: TextStyle(color: Colors.white
            ,
            fontWeight: FontWeight.bold),),)
      
          ],
        ),
      
      
      
      
      
      
      ),
    );
  }
}