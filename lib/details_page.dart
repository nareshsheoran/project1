import 'package:flutter/material.dart';
import 'package:project1/article.dart';

class DetailsPage extends StatefulWidget {
  Article article;
   DetailsPage(this.article);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.article.name),

        centerTitle: true,
        actions: [Padding(padding: EdgeInsets.all(20),
        child: Icon(Icons.more_vert_sharp),
        )],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 96,left: 20,right: 20,bottom: 80),
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(widget.article.image),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text(widget.article.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                    InkWell(
                        onTap: () {
                          setState(() {
                            isFavourite = !isFavourite;
                          });
                        },
                        child: Icon(
                          Icons.favorite,
                          color: isFavourite ? Colors.red : Colors.black,
                        )),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('\u{20B9}${widget.article.price}',style: TextStyle(fontWeight: FontWeight.w700),), Row(
                    children: [
                      Icon(Icons.star,color: Colors.orangeAccent,),
                      Icon(Icons.star,color: Colors.orangeAccent,),
                      Icon(Icons.star,color: Colors.orangeAccent,),
                      Icon(Icons.star,color: Colors.orangeAccent,),
                    ],
                  )],
                )

              ],),
            ),

            Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black
              ),
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: MaterialButton(onPressed: (){},
              child: Text("Add to cart",style: TextStyle(color: Colors.white),),),
            ),
                    ],
        ),
      ),
    );
  }
}
