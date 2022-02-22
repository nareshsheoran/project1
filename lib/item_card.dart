import 'package:flutter/material.dart';
import 'package:project1/article.dart';

class ItemCard extends StatefulWidget {
  final Article article;

   ItemCard(this.article);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image(
                  image: NetworkImage(widget.article.image),
                ),
                Positioned(
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            isFavourite = !isFavourite;
                          });
                        },
                        child: Icon(
                          Icons.favorite,
                          color: isFavourite ? Colors.red : Colors.white,
                        )),
                    right: 10,
                    top: 5),
              ],
            ),
            Expanded(
              child: Text(
                widget.article.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              '\u{20B9}${widget.article.price}',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
