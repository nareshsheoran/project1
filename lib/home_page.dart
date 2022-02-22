import 'package:flutter/material.dart';
import 'package:project1/article.dart';
import 'package:project1/details_page.dart';
import 'package:project1/item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Article> articleList = <Article>[
    Article(
        name: "Georg Jensen Minimal Clock",
        price: "29.00",
        image:
            "https://media.istockphoto.com/photos/close-up-of-small-blue-gray-mobile-home-with-a-front-and-side-porch-picture-id1297687835?s=612x612"),
    Article(
        name: "Teapot with black tea",
        price: "27.00",
        image:
            "https://media.istockphoto.com/photos/close-up-of-small-blue-gray-mobile-home-with-a-front-and-side-porch-picture-id1297687835?s=612x612"),
    Article(
        name: "Pearl Beading Textured Faux Fur",
        price: "29.00",
        image:
            "https://media.istockphoto.com/photos/close-up-of-small-blue-gray-mobile-home-with-a-front-and-side-porch-picture-id1297687835?s=612x612"),
    Article(
        name: "Atelier Ottoman Series",
        price: "29.00",
        image:
            "https://images.unsplash.com/photo-1591280063444-d3c514eb6e13?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
    Article(
        name: "Juliet Rowley Lounge Sofa",
        price: "29.00",
        image:
            "https://media.istockphoto.com/photos/close-up-of-small-blue-gray-mobile-home-with-a-front-and-side-porch-picture-id1297687835?s=612x612"),
  Article(
        name: "Georg Jensen Minimal Clock",
        price: "29.00",
        image:
            "https://media.istockphoto.com/photos/close-up-of-small-blue-gray-mobile-home-with-a-front-and-side-porch-picture-id1297687835?s=612x612"),
    Article(
        name: "Teapot with black tea",
        price: "27.00",
        image:
            "https://media.istockphoto.com/photos/close-up-of-small-blue-gray-mobile-home-with-a-front-and-side-porch-picture-id1297687835?s=612x612"),
    Article(
        name: "Pearl Beading Textured Faux Fur",
        price: "29.00",
        image:
            "https://media.istockphoto.com/photos/close-up-of-small-blue-gray-mobile-home-with-a-front-and-side-porch-picture-id1297687835?s=612x612"),
    Article(
        name: "Atelier Ottoman Series",
        price: "29.00",
        image:
            "https://images.unsplash.com/photo-1591280063444-d3c514eb6e13?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
    Article(
        name: "Juliet Rowley Lounge Sofa",
        price: "29.00",
        image:
            "https://media.istockphoto.com/photos/close-up-of-small-blue-gray-mobile-home-with-a-front-and-side-porch-picture-id1297687835?s=612x612"),
  Article(
        name: "Georg Jensen Minimal Clock",
        price: "29.00",
        image:
            "https://media.istockphoto.com/photos/close-up-of-small-blue-gray-mobile-home-with-a-front-and-side-porch-picture-id1297687835?s=612x612"),
    Article(
        name: "Teapot with black tea",
        price: "27.00",
        image:
            "https://media.istockphoto.com/photos/close-up-of-small-blue-gray-mobile-home-with-a-front-and-side-porch-picture-id1297687835?s=612x612"),
    Article(
        name: "Pearl Beading Textured Faux Fur",
        price: "29.00",
        image:
            "https://media.istockphoto.com/photos/close-up-of-small-blue-gray-mobile-home-with-a-front-and-side-porch-picture-id1297687835?s=612x612"),
    Article(
        name: "Atelier Ottoman Series",
        price: "29.00",
        image:
            "https://images.unsplash.com/photo-1591280063444-d3c514eb6e13?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
    Article(
        name: "Juliet Rowley Lounge Sofa",
        price: "29.00",
        image:
            "https://media.istockphoto.com/photos/close-up-of-small-blue-gray-mobile-home-with-a-front-and-side-porch-picture-id1297687835?s=612x612"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Decoration",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          actions: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
              child: Text(
                "Filters",
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black26,
            tabs: [
              Tab(
                child: Text(
                  "Featured",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child:
                    Text("Collections", style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text("Trading", style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: buildGridView(),
        ),
      ),
    );
  }

  GridView buildGridView() => GridView.builder(
        itemCount: articleList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) {
                            return DetailsPage(articleList[index]);
                          },
                          settings: RouteSettings(arguments: articleList)));
                },
                child: ItemCard(articleList[index])),
          );
        },
      );
}
