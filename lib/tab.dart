import 'package:flutter/material.dart';

class SwipeTabsPage extends StatefulWidget {
  @override
  _SwipeTabsPageState createState() => _SwipeTabsPageState();
}

class _SwipeTabsPageState extends State<SwipeTabsPage> {
  final List<Tab> tabs = <Tab>[
    Tab(text: 'Followers'),
    Tab(text: 'following'),
    Tab(text: 'Subscriptions'),
  ];

  final List<FollowerData> followers = [
    FollowerData(
      avatarUrl: 'assets\pp.jpg',
      followerName: 'fjgjgj',
    ),
    FollowerData(
      avatarUrl: 'assets\pp.jpg',
      followerName: 'jfjfj',
    ),
    FollowerData(
      avatarUrl: 'assets\pp.jpg',
      followerName: 'jfjfj',
    ),
    FollowerData(
      avatarUrl: 'assets\pp.jpg',
      followerName: 'jfjfj',
    ),
    FollowerData(
      avatarUrl: 'assets\pp.jpg',
      followerName: 'jfjfj',
    ),

    // Add more followers here
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Pramukesnvenky',
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          bottom: TabBar(
            tabs: tabs,
          ),
        ),
        backgroundColor: Colors.black,
        body: TabBarView(
          children: <Widget>[
            // Tab 1 content
            Center(
                child: Text(
              'followers',
              style: TextStyle(color: Colors.white),
            )),

            // Tab 2 content
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade900,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black, // Set border color
                          ),
                          borderRadius:
                              BorderRadius.circular(20), // Set border radius
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.contacts_outlined,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sync Contacts',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Find people you know',
                                style:
                                    TextStyle(fontSize: 8, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 40,
                            width: 60,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Sync',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ))),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Categories',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets\pp.jpg'),
                          child: Image.asset('assets\pp.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Least Interact With',
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          ),
                          Text(
                            'cosm and 49 others',
                            style:
                                TextStyle(color: Colors.blueGrey, fontSize: 9),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          child: Image.asset('assets\pp.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Most Shown in feed',
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          ),
                          Text(
                            'fgg and 49 others',
                            style:
                                TextStyle(color: Colors.blueGrey, fontSize: 9),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          child: Image.asset('assets\pp.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hashtags,Creators and business',
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          ),
                          Text(
                            'fhfh and 100 others',
                            style:
                                TextStyle(color: Colors.blueGrey, fontSize: 9),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Sorted by Default',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            Icons.arrow_upward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 400,
                    child: ListView.builder(
                      itemCount: followers.length,
                      itemBuilder: (BuildContext context, int index) {
                        return FollowerEntry(
                          followerData: followers[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Tab 3 content
            Center(
                child: Text(' 0 Subscriptions',
                    style: TextStyle(color: Colors.white))),
          ],
        ),
      ),
    );
  }
}

class FollowerData {
  final String avatarUrl;
  final String followerName;

  FollowerData({
    required this.avatarUrl,
    required this.followerName,
  });
}

class FollowerEntry extends StatelessWidget {
  final FollowerData followerData;

  const FollowerEntry({required this.followerData});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(left: 5, bottom: 5),
        child: CircleAvatar(
          backgroundImage: AssetImage(followerData.avatarUrl),
          radius: 35,
        ),
      ),
      title: Row(
        children: [
          Text(
            followerData.followerName,
            style: TextStyle(color: Colors.white, fontSize: 9),
          ),
          SizedBox(
            width: 90,
          ),
          Container(
            height: 25,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(10)),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Following',
                style: TextStyle(color: Colors.white, fontSize: 7),
              ),
            ),
          )
        ],
      ),
      trailing: PopupMenuButton<String>(
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'menu1',
              child: Text('Menu Item 1'),
            ),
            const PopupMenuItem<String>(
              value: 'menu2',
              child: Text('Menu Item 2'),
            ),
            const PopupMenuItem<String>(
              value: 'menu3',
              child: Text('Menu Item 3'),
            ),
          ];
        },
        onSelected: (String value) {
          // Handle menu item selection here
          print('Selected: $value');
        },
        color: Colors.white,
      ),
    );
  }
}
