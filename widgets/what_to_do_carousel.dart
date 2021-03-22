import 'package:flutter/material.dart';
import 'package:positive_birmingham/models/activities.dart';

class ActivitiesCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('What to do?',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5)),
                GestureDetector(
                  onTap: () => print('See all'),
                  child: Text('See all',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.0,
                      )),
                ),
              ]),
        ),
        Container(
            height: 300.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: activities.length,
                itemBuilder: (BuildContext context, int index) {
                  Activity activity = activities[index];
                  return Container(
                      margin: EdgeInsets.all(10.0),
                      width: 240.0,
                      child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                            Positioned(
                              bottom: 15.0,
                              child: Container(
                                height: 120.0,
                                width: 240.0,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          activity.name,
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0.0, 2.0),
                                      blurRadius: 6.0,
                                    )
                                  ]),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image(
                                    height: 180.0,
                                    width: 200.0,
                                    image: AssetImage(activity.imageUrl),
                                    fit: BoxFit.cover,
                                  )),
                            )
                          ]));
                })),
      ],
    );
    ;
  }
}
