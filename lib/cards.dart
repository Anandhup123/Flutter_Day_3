import 'package:flutter/material.dart';

Card buildCard() {
  var heading = '\$2300 per month';
  var subheading = '2 bed, 1 bath, 1300 sqft';
  var cardImage =
      NetworkImage('https://source.unsplash.com/random/800x600?house');
  var supportingText =
      'Beautiful home to rent, recently refurbished with modern appliances...';
  return Card(
      elevation: 4.0,
      child: Column(
        children: [
          ListTile(
            title: Text(heading),
            subtitle: Text(subheading),
            trailing: Icon(Icons.favorite_outline),
          ),
          Container(
            height: 200.0,
            child: Ink.image(
              image: cardImage,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(supportingText),
          ),
          ButtonBar(
            children: [
              TextButton(
                child: Text('CONTACT AGENT'),
                onPressed: () {},
              ),
              TextButton(
                child: Text('LEARN MORE'),
                onPressed: () {},
              )
            ],
          )
        ],
      ));
}
