import 'package:flutter/material.dart';

class DealCover extends StatelessWidget {
  final bool detailsView;
  final String imageUrl;
  const DealCover({Key? key, required this.detailsView, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: detailsView ? MediaQuery.of(context).size.width : 200,
          width: detailsView ? 400 : 200,
          child: Image.asset(imageUrl),
        ),
        Positioned(
            right: 0,
            top: 0,
            child: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            )),
        const Positioned(
            right: 4,
            bottom: 4,
            child: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.black,
              child: Text('Badge'),
            )),
        detailsView
            ? const Positioned(
                left: 8, bottom: 4, child: Text('Valid from 12 Jun to 18 July'))
            : const SizedBox()
      ],
    );
  }
}
