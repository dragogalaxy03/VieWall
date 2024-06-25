import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
        actions: [
          Icon(Icons.chat_bubble_outline),
          const SizedBox(width: 10,),
          Icon(Icons.settings),
        ],
      ),

      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(60),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset("images/boy.png", height: 50, width: 50, fit: BoxFit.cover,)),
                ),
                const SizedBox(width: 20,),
                Column(
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text("ASHISH KUMAR", style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.6)),)),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("16"),
                            Text("Followers")
                          ],
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("1"),
                            Text("Following")
                          ],
                        )

                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 20,),
            Text("Recent Activity", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),),
            const SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width/4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset("images/img1.jpg"),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width/4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset("images/img2.jpg"),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width/4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset("images/img3.jpg"),
                ),

              ],
            ),
            const SizedBox(height: 20,),
            Text("Your Content", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),),
            const SizedBox(height: 10,),
            Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.upload),
                    const SizedBox(width: 10,),
                    Text("Uploads", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                  ],
                ),
                const SizedBox(height: 8,),
                Row(
                  children: [
                    Icon(Icons.favorite),
                    const SizedBox(width: 10,),
                    Text("Favorites", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                  ],
                ),
                const SizedBox(height: 8,),
                Row(
                  children: [
                    Icon(Icons.download),
                    const SizedBox(width: 10,),
                    Text("Downloads", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                  ],
                ),
                const SizedBox(height: 8,),
                Row(
                  children: [
                    Icon(Icons.collections),
                    const SizedBox(width: 10,),
                    Text("Collections", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                  ],
                ),
                const SizedBox(height: 8,),
                Row(
                  children: [
                    Icon(Icons.content_paste_go_outlined),
                    const SizedBox(width: 10,),
                    Text("Content preferences", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                  ],
                ),
              ],
            )




          ],
        ),
      ),
    );
  }
}
