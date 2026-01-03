import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> stores = [
    {
      "name": "Clarie",
      "description": "Art and gift store",
      "location": "Coex mall",
      "image":
          "https://cdn.mos.cms.futurecdn.net/LmkPoE3F7q7sPZLRuxvs9R.jpg"
    },
    {
      "name": "City Bakery",
      "description": "Fresh breads and cakes everyday",
      "location": "KX street",
      "image":
          "https://static.vecteezy.com/system/resources/previews/022/143/762/non_2x/bakery-interior-with-display-counters-full-of-scrumptious-bread-and-pastries-shop-a-patisserie-or-bakery-with-croissants-apple-pies-waffles-and-churros-freshly-baked-pastries-generative-ai-photo.jpg"
    },
    {
      "name": "Green Hub",
      "description": "Organic green products",
      "location": "Near Bus Stand of Vayttila",
      "image":
          "https://tse4.mm.bing.net/th/id/OIP.PaFqd-3Et4nG-auxrzSPIgHaFj?pid=Api&P=0&h=180"
    },
    {
      "name": "Chocalate Factory",
      "description": "For the chocalate lovers ",
      "location": "Switzerland",
      "image":
          "https://tse4.mm.bing.net/th/id/OIP.dTFtWOwqdo6Ak3Q5tYZkmgHaFj?pid=Api&P=0&h=180"
    },
    {
      "name": "Clay Beauty",
      "description": "Clay can make your face Glow ",
      "location": "Coex Mall",
      "image":
          "https://tse3.mm.bing.net/th/id/OIP.RzN_q8LUlp_0wGuIwF0FRAHaF-?pid=Api&P=0&h=180"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stores For You", style: TextStyle(fontSize: 25),),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: stores.length,
        itemBuilder: (context, index) {
          final store = stores[index];

          return Card(
            elevation: 4,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  store["image"]!,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                store["name"]!,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4),
                  Text(store["description"]!),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 14, color: Colors.red),
                      SizedBox(width: 4),
                      Text(store["location"]!),
                    ],
                  ),
                ],
              ),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}
