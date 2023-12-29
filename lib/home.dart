import 'package:flutter/material.dart';
import 'bookmark_page.dart';
import 'profile.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BOOKS FOR YOU', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Mengatur radius melengkung
          ),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GenreListWidget(),
          Expanded(
            child: BookmarkListWidget(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 0) {
            // Navigate to Home page
            // You can add your logic here if needed
          } else if (index == 1) {
            // Navigate to Trending page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookmarkPage(),
              ),
            );
          } else if (index == 2) {
            // Navigate to Profile page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Trending',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Profile',
          ),
        ],
        backgroundColor:
            Colors.blue.shade900, // Mengatur warna latar belakang menu bawah
        selectedItemColor:
            Colors.white, // Mengatur warna ikon dan teks item yang aktif
        unselectedItemColor: const Color.fromARGB(255, 111, 209, 255),
        // Mengatur warna ikon dan teks item yang tidak aktif
      ),
    );
  }
}

class GenreListWidget extends StatefulWidget {
  @override
  _GenreListWidgetState createState() => _GenreListWidgetState();
}

class _GenreListWidgetState extends State<GenreListWidget> {
  final ScrollController _genreScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      "Fiction",
      "Science Fiction",
      "Mystery",
      "Fiction",
      "Science Fiction",
      "Mystery"
    ];

    return Container(
      height: 50,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        controller: _genreScrollController,
        physics: BouncingScrollPhysics(), // Tambahkan physics di sini
        child: Row(
          children: [
            for (int index = 0; index < genres.length; index++)
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Add logic to filter books based on genre
                  },
                  child: Text(genres[index]),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class BookmarkListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> books = [
      "XOXO",
      "Her Radiant Curse (Legends of Lor'yan)",
      "The Mermaid, the Witch, and the Sea",
      "Spookily Yours",
      "Nobody Knows But You",
      "Nightbooks",
      "Peter Pan in Wonderland: A mixed fairytale retelling (Mirror Islands)",
      "Soul Lanters",
      "Thorn",
      "The Strange Case of the Alchemist's Daughter",
      "The Truth Lies Here",
      "Frankenstein",
      "The Outsider",
      "What Moves the Dead",
      "The Bewitching of Aveline Jones",
      "Ottilie Colter and the Narroway Hunt",
      "Dead Voices",
    ];

    final List<String> penulis = [
      "Jennys never had much time for boys, K-pop, or really anything besides her dream of being a professional cellist.... \n By AXIE OH",
      "Channi was not born a monster. But when her own father offers her in sacrifice to the Demon Witch, she is forever changed.\nBy Elizabeth Lim",
      "In a world divided by colonialism and threaded with magic, a desperate orphan turned pirate and a rebellious imperial lady find a connection on the high seas.\nBy Meggie Tokuda-Hall",
      "My cat is a demon.\n No, thats not a joke. An actual, real life demon. And he needs my help to break a curse.But what happens when that turns into more? \nBy Anica Mrose Rissi",
      "A boy is imprisoned by a witch and must tell her a new scary story each night to stay alive. This thrilling contemporary fantasy from J. A. White...\nBy J.A. White",
      "At a local amusement park called Wonderland, Peter has a chance encounter with his fencing rival, Jillian Hook. ......\nBy Jeni Conrad",
      "Twelve-year-old Nozomi lives in the Japanese city of Hiroshima. She wasn't even born when the bombing of Hiroshima took place. ....\nBy Shaw Kuzki",
      "Hunted meets The Wrath and the Dawn in this bold fairytale retelling—where court intrigue, false identities, and dark secrets will thrill fans of classic and contemporary fantasy alike.....\nBy Intisar Khanani",
      "Based on some of literatures horror and science fiction classics, this “tour de force of reclaiming the narrative, executed with impressive wit and insight......\nBy Theodora Goss",
      "In small town Michigan, Penny Hardjoy, an aspiring journalist, teams up with the nerdy boy next door and the towns star.......\nBy Lindsey Klingele",
      "Few creatures of horror have seized readers' imaginations and held them for so long as the anguished monster of Mary Shelley's Frankenstein. ....\nBy Mary Shelley",
      "An unspeakable crime. A confounding investigation. At a time when the King brand has never been stronger, he has delivered one of his most unsettling and compulsively listenable stories. ... \nBy Stephen King",
      "What they find there is a nightmare of fungal growths and possessed wildlife, surrounding a dark, pulsing lake. Madeline sleepwalks and speaks in strange voices at night .... \nBy T. Kingfisher",
      "Aveline Jones loves all things spooky, so is delighted when her mother rents a holiday cottage that overlooks an ancient stone circle, known locally as the Witch Stones. ......\nBy Phil Hickes",
      "Ottilie Colter and her brother, Gully, have always fended for themselves. So when Gully goes missing one night, Ottilie sets out to find him—and soon makes a horrible discovery. ...\nBy Rhiannon Williams",
      "New York Times bestselling author Katherine Arden returns with another creepy, spine-tingling adventure in the critically acclaimed Small Spaces Quartet. Now in paperback...\nBy Katherine Arden",
      "For fans of Amulet and middle grade readers who love sweeping worlds like Star Wars, the first book of the Lightfall series introduces Bea and Cad, two unlikely friends who get ... \nBy Tim Pobert",
    ];

    final List<String> image = [
      'lib/image/xoxo.jpg',
      'lib/image/her_radiant.jpg',
      'lib/image/mermaid.jpeg',
      'lib/image/spookly.jpg',
      'lib/image/nobody.jpeg',
      'lib/image/nightbook.jpeg',
      'lib/image/peter.jpeg',
      'lib/image/soul.jpeg',
      'lib/image/thorn.jpeg',
      'lib/image/strange.jpeg',
      'lib/image/truth.jpeg',
      'lib/image/franken.jpeg',
      'lib/image/outsiders.jpeg',
      'lib/image/moves.jpeg',
      'lib/image/bewi.jpeg',
      'lib/image/otti.jpeg',
      'lib/image/dead.jpeg',
    ];

    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 9.0),
          padding: EdgeInsets.all(8.0),
          width: 100, // Sesuaikan lebar sesuai kebutuhan
          height: 200, // Sesuaikan tinggi sesuai kebutuhan (tinggi widget teks)
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(0.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: ListTile(
            leading: Container(
              width: 50, // Sesuaikan lebar gambar agar lebih besar
              height: 150, // Tinggi gambar memenuhi seluruh tinggi container
              child: Image.asset(
                image[index], // Gunakan path gambar lokal dari daftar
                fit: BoxFit.contain,
              ),
            ),
            title: Text(
              books[index],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(penulis[index]),
            trailing: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Peminjaman Buku'),
                      content: Text('Anda telah meminjam ${books[index]}'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Add'),
            ),
          ),
        );
      },
    );
  }
}
