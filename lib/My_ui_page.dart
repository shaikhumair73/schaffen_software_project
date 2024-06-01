import 'package:flutter/material.dart';
import 'package:schaffen_software_project/ostum_widget/Row_costum.dart';
import 'package:schaffen_software_project/search_Screen.dart';

class My_Ui extends StatelessWidget {
  // const My_Ui({super.key});
  bool isSwitched = false;

  List<dynamic> images = [
    "assets/images/singing.jpeg",
    "assets/images/singing.jpeg",
    "assets/images/singing.jpeg",
    "assets/images/singing.jpeg",
    "assets/images/singing.jpeg",
    "assets/images/singing.jpeg",
    "assets/images/singing.jpeg",
    "assets/images/singing.jpeg",
    "assets/images/singing.jpeg",
    "assets/images/singing.jpeg",
    "assets/images/singing.jpeg",
    "assets/images/singing.jpeg",
    "assets/images/singing.jpeg",
    "assets/images/singing.jpeg",
    "assets/images/singing.jpeg",
  ];
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.person_add),
                title: Text('Add Member'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.group_add),
                title: Text('Add Group'),
                onTap: () {},
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(
                width: double.infinity,
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "The weekend",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            "Community 11k Members",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          _showBottomSheet(context);
                        },
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.white,
            expandedHeight: MediaQuery.of(context).size.height * 0.3,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/singing.jpeg",
                width: double.maxFinite,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
                "The first use of Lorem ipsum is uncertain,  works specimen books demonstrating different fonts. According to this account, the material was chosen based on Latin’s familiarity as a lingua franca across Europe and the popularity of Classical works during the Middle Ages. Whenever it was first created, Lorem ipsum did not gain widespread popularity until the 1960s, when Letraset manufactured preprinted transfer sheets that featured"),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Medai, docs and links",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.12,
            child: ListView.builder(
                // physics: NeverScrollableScrollPhysics(),
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  );
                }),
          )),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Mute notification"),
                      Switch(value: isSwitched, onChanged: (value) {})
                    ],
                  ),
                ),
                My_Row(
                    MyText: "Clear chat",
                    icon: Icons.delete,
                    color: Colors.black87),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                My_Row(
                    MyText: "Encryption",
                    icon: Icons.lock,
                    color: Colors.black87),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                My_Row(
                    MyText: "Exit community",
                    icon: Icons.exit_to_app_sharp,
                    color: Colors.red),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                My_Row(
                    MyText: "Report",
                    icon: Icons.thumb_down_sharp,
                    color: Colors.red)
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Members",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (contetx) {
                          return Search_Screen();
                        }));
                      },
                      child: Icon(
                        Icons.search,
                        size: 25,
                      ))
                ],
              ),
            ),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate(childCount: 15, (context, index) {
              return ListTile(
                title: Text("Henry"),
                subtitle: Text("26, India"),
                leading: CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Image.asset(
                      "assets/images/girls2.jpg",
                      width: MediaQuery.of(context).size.width * 0.2,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: index == 0 ? Colors.grey : Colors.pink,
                  ),
                  width: MediaQuery.of(context).size.width * 0.32,
                  height: MediaQuery.of(context).size.height * 0.04,
                  child: index == 0
                      ? Center(
                          child: Text(
                            "Following",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      : Center(
                          child: Text(
                          "Add",
                          style: TextStyle(color: Colors.white),
                        )),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
