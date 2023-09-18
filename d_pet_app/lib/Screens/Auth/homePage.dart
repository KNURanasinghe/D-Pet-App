import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<Map<String, dynamic>> dog = [
  {
    'breed': 'Golden Retriever',
    'imageUrl':
        'https://th.bing.com/th/id/R.3cdc9dcc9a650ab6fc23235f42ad17d5?rik=NqGxfy%2bO1TkOrA&pid=ImgRaw&r=0',
    'description':
        'The Golden Retriever is a friendly, intelligent, and devoted dog breed.',
    'localPrice': 800.0,
    'rating': 4.8,
  },
  {
    'breed': 'Labrador Retriever',
    'imageUrl':
        'https://th.bing.com/th/id/R.bba00d63d74c9b724185bd791d14b501?rik=1q4KBm%2ffS7CEBA&pid=ImgRaw&r=0',
    'description': 'Labradors are known for their playful and outgoing nature.',
    'localPrice': 750.0,
    'rating': 4.9,
  },
  {
    'breed': 'German Shepherd',
    'imageUrl':
        'https://th.bing.com/th/id/R.1ff6519768da9fdab393ec78e432c189?rik=FCaeLYHjK7seQA&pid=ImgRaw&r=0',
    'description':
        'German Shepherds are loyal and courageous dogs often used in police and military work.',
    'localPrice': 900.0,
    'rating': 4.7,
  },
  {
    'breed': 'Bulldog',
    'imageUrl':
        'https://th.bing.com/th/id/R.07f134fd198baaec3ef0d59d58de5056?rik=p570uHzY5E33Xw&pid=ImgRaw&r=0',
    'description':
        'Bulldogs are known for their loose, wrinkled skin and distinctive pushed-in nose.',
    'localPrice': 600.0,
    'rating': 4.5,
  },
  {
    'breed': 'Poodle',
    'imageUrl':
        'https://www.pngall.com/wp-content/uploads/5/Poodle-PNG-180x180.png',
    'description':
        'Poodles come in various sizes and are known for their intelligence and hypoallergenic fur.',
    'localPrice': 1000.0,
    'rating': 4.6,
  },
  {
    'breed': 'Beagle',
    'imageUrl':
        'https://th.bing.com/th/id/R.50d3ae8374befeb61255f7a6167ecbbf?rik=NgQmkLHdCXsy6A&riu=http%3a%2f%2fcdn.akc.org%2fakcdoglovers%2fBeagle_cutout_-_Copy.png&ehk=YL0%2fF9V9PFfYNTF3vXKwfmjHwNj1HxYwqhrdKzBkfOA%3d&risl=&pid=ImgRaw&r=0',
    'description': 'Beagles are friendly, curious, and great family dogs.',
    'localPrice': 650.0,
    'rating': 4.4,
  },
  {
    'breed': 'Rottweiler',
    'imageUrl':
        'https://th.bing.com/th/id/R.44d0e51bed9d60599c746d5155837781?rik=51SROth2MbmuWg&pid=ImgRaw&r=0',
    'description':
        'Rottweilers are strong and loyal dogs often used as guard dogs.',
    'localPrice': 850.0,
    'rating': 4.7,
  },
  {
    'breed': 'Boxer',
    'imageUrl':
        'https://th.bing.com/th/id/OIP.ulrFPWAhOnpIHTFBVvddLQHaLW?pid=ImgDet&w=522&h=800&rs=1',
    'description': 'Boxers are energetic, playful, and great companions.',
    'localPrice': 700.0,
    'rating': 4.6,
  },
  {
    'breed': 'Dachshund',
    'imageUrl':
        'https://th.bing.com/th/id/R.507e69904b67397cb030421321407d5c?rik=8pr8tWtzuBQ06w&pid=ImgRaw&r=0',
    'description':
        'Dachshunds, also known as wiener dogs, have a long body and short legs.',
    'localPrice': 550.0,
    'rating': 4.3,
  },
  {
    'breed': 'Yorkshire Terrier',
    'imageUrl':
        'https://th.bing.com/th/id/R.4ea03c74cf3d0f3da57e3895d7e68ffb?rik=T%2f28dexeO%2bohCw&pid=ImgRaw&r=0&sres=1&sresct=1',
    'description':
        'Yorkies are small, affectionate dogs with a feisty personality.',
    'localPrice': 750.0,
    'rating': 4.5,
  },
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(color: Colors.grey.shade300),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: dog.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 200,
                          child: Card(
                            elevation: 5,
                            child: Row(
                              children: [
                                Container(
                                  height: 200,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          dog[index]['imageUrl'],
                                        ),
                                        fit: BoxFit.fill),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
