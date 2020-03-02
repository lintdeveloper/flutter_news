import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news/src/models/news_headlines.dart';
import 'package:flutter_news/src/services/services.dart';
import 'package:flutter_news/src/utils/screensize_reducers.dart';
import 'package:flutter_news/src/utils/utils.dart';

class NewsDashboardScreen extends StatefulWidget {
  @override
  _NewsDashboardScreenState createState() => _NewsDashboardScreenState();
}

class _NewsDashboardScreenState extends State<NewsDashboardScreen> {
  int selectedTab = 0; // initialise to 0

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(Constants.appName),
          bottom: TabBar(
              isScrollable: true,
              onTap: (val) {
                setState(() {
                  selectedTab = val;
                });
              },
              indicator:
                  CircleTabIndicator(color: Color(0xff59C2FF), radius: 3),
              tabs: [
                Tab(
                    child: Text("General",
                        style: TextStyle(
                            fontSize: 16,
                            color: selectedTab == 0
                                ? Color(0xff333333)
                                : Color(0xffBEC4CD),
                            fontWeight: FontWeight.w400))),
                Tab(
                    child: Text("Business",
                        style: TextStyle(
                            fontSize: 16,
                            color: selectedTab == 1
                                ? Color(0xff333333)
                                : Color(0xffBEC4CD),
                            fontWeight: FontWeight.w400))),
                Tab(
                    child: Text("Entertainment",
                        style: TextStyle(
                            fontSize: 16,
                            color: selectedTab == 2
                                ? Color(0xff333333)
                                : Color(0xffBEC4CD),
                            fontWeight: FontWeight.w400))),
                Tab(
                    child: Text("Health",
                        style: TextStyle(
                            fontSize: 16,
                            color: selectedTab == 3
                                ? Color(0xff333333)
                                : Color(0xffBEC4CD),
                            fontWeight: FontWeight.w400))),
                Tab(
                    child: Text("Science",
                        style: TextStyle(
                            fontSize: 16,
                            color: selectedTab == 4
                                ? Color(0xff333333)
                                : Color(0xffBEC4CD),
                            fontWeight: FontWeight.w400))),
                Tab(
                    child: Text("Sports",
                        style: TextStyle(
                            fontSize: 16,
                            color: selectedTab == 5
                                ? Color(0xff333333)
                                : Color(0xffBEC4CD),
                            fontWeight: FontWeight.w400))),
                Tab(
                    child: Text("Technology",
                        style: TextStyle(
                            fontSize: 16,
                            color: selectedTab == 6
                                ? Color(0xff333333)
                                : Color(0xffBEC4CD),
                            fontWeight: FontWeight.w400))),
              ]),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            padding: EdgeInsets.all(12),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    child: FutureBuilder<List<Articles>>(
                      future: NewsDataSource().getNewsHeadlines("general"),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) print(snapshot.error);

                        return snapshot.hasData
                            ? NewsHeadlinesList(headlines: snapshot.data)
                            : Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    padding: EdgeInsets.only(left: 8),
                    alignment: Alignment.topLeft,
                    child: Text("Top headlines in Nigeria",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("POLITICS", style: TextStyle(fontSize: 18,
                                              color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                          Text(
                                              "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                  "used in laying out print, graphic or web designs. The passage"
                                                  " is attributed to an unknown typesetter in the 15th "
                                                  "century who is thought to have scrambled parts "
                                                  "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                  "a type specimen book.",
                                            softWrap: true,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis),
                                            Container(
                                             padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("CORONAVIRUS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("GADGETS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    padding: EdgeInsets.only(left: 8),
                    alignment: Alignment.topLeft,
                    child: Text("Top headlines in US",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("POLITICS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("CORONAVIRUS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("GADGETS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(12),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    child: FutureBuilder<List<Articles>>(
                      future: NewsDataSource().getNewsHeadlines("business"),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) print(snapshot.error);

                        return snapshot.hasData
                            ? NewsHeadlinesList(headlines: snapshot.data)
                            : Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    padding: EdgeInsets.only(left: 8),
                    alignment: Alignment.topLeft,
                    child: Text("Top headlines in Nigeria",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("POLITICS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("CORONAVIRUS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("GADGETS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    padding: EdgeInsets.only(left: 8),
                    alignment: Alignment.topLeft,
                    child: Text("Top headlines in US",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("POLITICS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("CORONAVIRUS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("GADGETS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(12),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    child: FutureBuilder<List<Articles>>(
                      future: NewsDataSource().getNewsHeadlines("entertainment"),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) print(snapshot.error);

                        return snapshot.hasData
                            ? NewsHeadlinesList(headlines: snapshot.data)
                            : Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    padding: EdgeInsets.only(left: 8),
                    alignment: Alignment.topLeft,
                    child: Text("Top headlines in Nigeria",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("POLITICS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("CORONAVIRUS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("GADGETS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    padding: EdgeInsets.only(left: 8),
                    alignment: Alignment.topLeft,
                    child: Text("Top headlines in US",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("POLITICS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("CORONAVIRUS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("GADGETS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(12),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    child: FutureBuilder<List<Articles>>(
                      future: NewsDataSource().getNewsHeadlines("health"),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) print(snapshot.error);

                        return snapshot.hasData
                            ? NewsHeadlinesList(headlines: snapshot.data)
                            : Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    padding: EdgeInsets.only(left: 8),
                    alignment: Alignment.topLeft,
                    child: Text("Top headlines in Nigeria",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("POLITICS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("CORONAVIRUS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("GADGETS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    padding: EdgeInsets.only(left: 8),
                    alignment: Alignment.topLeft,
                    child: Text("Top headlines in US",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("POLITICS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("CORONAVIRUS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("GADGETS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(12),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    child: FutureBuilder<List<Articles>>(
                      future: NewsDataSource().getNewsHeadlines("science"),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) print(snapshot.error);

                        return snapshot.hasData
                            ? NewsHeadlinesList(headlines: snapshot.data)
                            : Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    padding: EdgeInsets.only(left: 8),
                    alignment: Alignment.topLeft,
                    child: Text("Top headlines in Nigeria",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("POLITICS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("CORONAVIRUS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("GADGETS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    padding: EdgeInsets.only(left: 8),
                    alignment: Alignment.topLeft,
                    child: Text("Top headlines in US",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("POLITICS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("CORONAVIRUS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("GADGETS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(12),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    child: FutureBuilder<List<Articles>>(
                      future: NewsDataSource().getNewsHeadlines("sports"),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) print(snapshot.error);

                        return snapshot.hasData
                            ? NewsHeadlinesList(headlines: snapshot.data)
                            : Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    padding: EdgeInsets.only(left: 8),
                    alignment: Alignment.topLeft,
                    child: Text("Top headlines in Nigeria",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("POLITICS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("CORONAVIRUS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("GADGETS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    padding: EdgeInsets.only(left: 8),
                    alignment: Alignment.topLeft,
                    child: Text("Top headlines in US",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("POLITICS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("CORONAVIRUS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("GADGETS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(12),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    child: FutureBuilder<List<Articles>>(
                      future: NewsDataSource().getNewsHeadlines("technology"),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) print(snapshot.error);

                        return snapshot.hasData
                            ? NewsHeadlinesList(headlines: snapshot.data)
                            : Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    padding: EdgeInsets.only(left: 8),
                    alignment: Alignment.topLeft,
                    child: Text("Top headlines in Nigeria",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("POLITICS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("CORONAVIRUS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("GADGETS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    padding: EdgeInsets.only(left: 8),
                    alignment: Alignment.topLeft,
                    child: Text("Top headlines in US",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("POLITICS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("CORONAVIRUS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/bus.png"),
                                    Container(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(child: Text("GADGETS", style: TextStyle(fontSize: 18,
                                                color: Color((0xffC3C9DF)))),
                                              margin: EdgeInsets.only(bottom: 5),
                                            ),
                                            Text(
                                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text "
                                                    "used in laying out print, graphic or web designs. The passage"
                                                    " is attributed to an unknown typesetter in the 15th "
                                                    "century who is thought to have scrambled parts "
                                                    "of Cicero's De Finibus Bonorum et Malorum for use in "
                                                    "a type specimen book.",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis),
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text("14 Jun 2018", style: TextStyle(fontSize: 14,
                                                      color: Color((0xffC3C9DF)))),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class NewsHeadlinesList extends StatelessWidget {
  final List<Articles> headlines;
  final bool isComplete;

  NewsHeadlinesList({Key key, this.headlines, this.isComplete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String emptyImage =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReqGZkNh_7PiMLETDSFY0edIBsgco8NZEl3DYT7FWK8p9p3gk8&s';
    if (headlines.length == 0) {
      return Container(
        margin: EdgeInsets.only(bottom: 16.0),
        child: Center(
          child: Text(
            "No Headlines at the moment",
            style: TextStyle(
                color: Color.fromRGBO(196, 184, 217, 1), fontSize: 12.0),
          ),
        ),
      );
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: headlines.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: null,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Container(
              width: 260,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network(
                    headlines[index].image == null
                        ? emptyImage
                        : headlines[index].image,
                    width: 260,
                    height: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Text(
                      headlines[index].title == null
                          ? "No Title"
                          : headlines[index].title,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Text(
                      headlines[index].content == null
                          ? "No Content\n\n"
                          : headlines[index].content,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    width: 260,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 5)
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              headlines[index].author == null
                                  ? "No Author"
                                  : headlines[index].author,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            Text(formatDate(headlines[index].publishedAt),
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 4,
                          ),
                          child: Icon(
                            Icons.bookmark_border,
                            size: 32,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  String formatDate(String publishedAt) {
    var parsedDate = DateTime.parse(publishedAt);
    return "${parsedDate.day}-${parsedDate.month}-${parsedDate.year}";
  }
}
