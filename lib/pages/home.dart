import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:viewall/profile/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List Wallpaperimage = ["images/wallpaper1.jpg", "images/wallpaper2.jpg", "images/wallpaper3.jpg"];
  int activeIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
        child: Column(children: [
        Row(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
              },
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(60),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset("images/boy.png", height: 50, width: 50, fit: BoxFit.cover,)),
              ),
            ),
            SizedBox(width: 80.0,),
            Text("Viewall", style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'WixMadeforText'
              ),),

          ],
        ),
          SizedBox(height: 30.0,),
          CarouselSlider.builder(itemCount: Wallpaperimage.length, itemBuilder: (context, index, realIndex){
            final res = Wallpaperimage[index];
            return buildImage(res,index);
          }, options: CarouselOptions(
            autoPlay: true,
            height: MediaQuery.of(context).size.height/1.5,
            viewportFraction: 1,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            onPageChanged: (index, reason){
              setState(() {
                activeIndex = index;
              });
            }
          )),
          SizedBox(height: 20.0,),
          Center(child: buildIndicator(),),
      ],),)
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(activeIndex: activeIndex, count: 3,effect: SlideEffect(
    dotWidth: 15, dotHeight: 15, dotColor: Colors.black87
  ),);

  Widget buildImage(String urlImage, int index) => Container(
    margin: EdgeInsets.only(left: 20.0),
    height: MediaQuery.of(context).size.height/1.5,
    width: MediaQuery.of(context).size.width,
    child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(urlImage, fit: BoxFit.cover,)),
  );

}
