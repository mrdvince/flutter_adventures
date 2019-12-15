import 'package:flutter/material.dart';
import 'package:travel_ui/models/destination_model.dart';

class DestinationCorousel extends StatelessWidget {
  const DestinationCorousel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Top Destinations',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                  letterSpacing: 1.5),
            ),
            GestureDetector(
              onTap: () => print('See All'),
              child: Text(
                'See All',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    letterSpacing: 1.0),
              ),
            ),
          ],
        ),
      ),
      Container(
          height: 300.0,
          color: Colors.blue,
          child: ListView.builder(
            itemCount: destinations.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              Destination destination = destinations[index];
              return Container(
                margin: const EdgeInsets.all(10.0),
                width: 210.0,
                color: Colors.red,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 120.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '${destination.activities.length} activities',
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.2),
                          ),
                          Text(
                            destination.description,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ))
    ]);
  }
}
