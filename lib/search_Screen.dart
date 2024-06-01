import 'package:flutter/material.dart';

class Search_Screen extends StatelessWidget {
  const Search_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundColor: Colors.black87,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(90),
                child: Image.asset(
                  "assets/images/girls2.jpg",
                  width: MediaQuery.of(context).size.width * 0.1,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  "The Weekend",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  "community, 11k Members",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ],
            ),
            Icon(Icons.more_vert)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "search here",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14))),
                ),
              ),
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 30,
                itemBuilder: (context, index) {
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
          ],
        ),
      ),
    );
  }
}
