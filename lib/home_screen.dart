import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Rajat Gupta"),
              accountEmail: Text("rajatgupta977@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "R",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.menu_book_outlined), title: const Text("My Classes"),
              onTap: () {

              },
            ),
            ListTile(
              leading: const Icon(Icons.explore), title: const Text("Explore"),
              onTap: () {

              },
            ),
            ListTile(
              leading: const Icon(Icons.book), title: const Text("My Courses"),
              onTap: () {

              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month_outlined), title: const Text("PEP Scheduler"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.cases_outlined), title: const Text("Vault"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings), title: const Text("Settings"),
              onTap: () {

              },
            ),
            ListTile(
              leading: const Icon(Icons.support_agent_outlined), title: const Text("Support"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xff00B0F0),
        title: const Text('ed2100'),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal:20),
            child: Icon(Icons.notification_important),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(top:8.0, left: 18, right: 8, ),
            child: Text("My Courses", style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold,
            ),),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal:10),
              itemCount: 18,
              itemBuilder: (ctx, i) {
                return Card(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 5),
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Container(
                                height: 100,
                                width: 350,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://www.unrevealedfiles.com/wp-content/uploads/artistic-illustration-of-simulation-theory.jpg',),
                                      fit: BoxFit.fill,
                                    )
                                ),
                              ),
                            ),
                            const SizedBox(height: 5,),
                            Container(
                              padding: const EdgeInsets.only(top: 5, left: 5),
                              alignment: Alignment.topLeft,
                              child: const Text(
                                '-Non Academic.',
                                style: TextStyle(
                                  fontSize: 8,
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500,
                                ), //Textstyle
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Modeling and Simulation..',
                                style: TextStyle(
                                  fontSize:10,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ), //Textstyle
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children:  const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 4.0,),
                                      child: Icon(Icons.category_outlined, size: 10, color: Colors.black38,),
                                    ),
                                    SizedBox(width: 3,),
                                    Text("Simulation", style: TextStyle(
                                        color: Colors.black38, fontSize: 6
                                    ),)
                                  ],
                                ),
                                Row(
                                  children:  const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 4.0),
                                      child: Icon(Icons.language_outlined, size: 8, color: Colors.black38,),
                                    ),
                                    SizedBox(width: 3,),
                                    Padding(
                                      padding: EdgeInsets.only(right: 4.0),
                                      child: Text("En: Lang", style: TextStyle(
                                          color: Colors.black38, fontSize: 6
                                      ),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children:  const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 4.0,),
                                      child: Icon(Icons.menu_book, size: 8, color: Colors.black38,),
                                    ),
                                    SizedBox(width: 3,),
                                    Text("28 Chapters", style: TextStyle(
                                        color: Colors.black38, fontSize: 6
                                    ),)
                                  ],
                                ),
                                Row(
                                  children:   [
                                    Padding(
                                      padding: EdgeInsets.only(left: 4.0),
                                      child: Container(
                                        height: 10,
                                        width: 10,
                                        decoration:  BoxDecoration(
                                            image: const DecorationImage(image: NetworkImage("https://play-lh.googleusercontent.com/7Ce16xDkZW-GmTSjvcfhBFQwe67Uu79Hzr-M4JAfvvq7qX_cTPsl7TcbhFZeW3MdpUGm"),
                                            ),
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 3,),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 4.0),
                                      child: Text("Byjus", style: TextStyle(
                                          color: Colors.black38, fontSize: 8
                                      ),),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        Positioned(
                          bottom: 80,
                          right: 5,
                          child: Container(
                            alignment: Alignment.center,
                            width: 50,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                children: const [
                                  Icon(Icons.book_rounded, color: Colors.black, size:10,),
                                  SizedBox(width: 5,),
                                  Text('CBSC', style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8
                                  ),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 5,
                mainAxisExtent: 220,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
