import 'package:flutter/material.dart';
import 'package:viewall/category_content/anime.dart';
import 'package:viewall/category_content/city.dart';
import 'package:viewall/category_content/food.dart';
import 'package:viewall/category_content/nature.dart';
import 'package:viewall/category_content/wildlife.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Viewall", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Center(
              child: Text("Categories", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'WixMadeforText'
              ),),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Wildlife()));
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("images/Wildlife.jpeg", width: MediaQuery.of(context).size.width,height: 180, fit: BoxFit.cover,)),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("WILDLIFE", style: TextStyle(color: Colors.white, fontFamily:'WixMadeforText', fontSize: 30.0, fontWeight: FontWeight.bold ),)),
                    ),
                  ],
                ),
              ),
            ),

            //Foods


            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Food()));
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("images/Food.jpeg", width: MediaQuery.of(context).size.width,height: 180, fit: BoxFit.cover,)),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("FOOD", style: TextStyle(color: Colors.white, fontFamily:'WixMadeforText', fontSize: 30.0, fontWeight: FontWeight.bold ),)),
                    ),
                  ],
                ),
              ),
            ),

            //Anime


            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Anime()));
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("images/Anime.jpeg", width: MediaQuery.of(context).size.width,height: 180, fit: BoxFit.cover,)),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("ANIME", style: TextStyle(color: Colors.white, fontFamily:'WixMadeforText', fontSize: 30.0, fontWeight: FontWeight.bold ),)),
                    ),
                  ],
                ),
              ),
            ),


            // Nature

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Nature()));
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("images/Nature.jpeg", width: MediaQuery.of(context).size.width,height: 180, fit: BoxFit.cover,)),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("NATURE", style: TextStyle(color: Colors.white, fontFamily:'WixMadeforText', fontSize: 30.0, fontWeight: FontWeight.bold ),)),
                    ),
                  ],
                ),
              ),
            ),

            //CITY

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>City()));
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("images/City.jpg", width: MediaQuery.of(context).size.width,height: 180, fit: BoxFit.cover,)),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("CITY", style: TextStyle(color: Colors.white, fontFamily:'WixMadeforText', fontSize: 30.0, fontWeight: FontWeight.bold ),)),
                    ),
                  ],
                ),
              ),
            ),

            //


          ],
        ),
      ),),
    );
  }
}
