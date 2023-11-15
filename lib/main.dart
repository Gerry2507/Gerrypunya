import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Godrej',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Godrej'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Wrap the Column with SingleChildScrollView
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Banner toko seperti di Tokopedia
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.network(
                  'https://images.bisnis.com/posts/2021/04/21/1384479/godrej-logo.jpg', // Ganti dengan URL foto toko
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.black.withOpacity(0.5),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Avatar foto toko
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          'https://images.bisnis.com/posts/2021/04/21/1384479/godrej-logo.jpg', // Ganti dengan URL avatar toko
                        ),
                      ),
                      SizedBox(height: 8),
                      // Informasi banyak pengikut toko
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.people, color: Colors.white),
                          SizedBox(width: 8),
                          Text(
                            '10K Pengikut',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      // Tombol follow store
                      ElevatedButton(
                        onPressed: () {
                          // Handle follow store action
                        },
                        child: Text('Follow Store'),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 246, 11, 11),
                        ),
                      ),
                      SizedBox(height: 8),
                      // Tombol share
                      ElevatedButton(
                        onPressed: () {
                          // Handle share action
                        },
                        child: Text('Share'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // List Produk
            ListView(
              // Wrap the ListView with Expanded to make it scrollable
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [
                buildProductCard('Rinso', 'Rp. 20.000',
                    'https://www.rinso.com/images/h0nadbhvm6m4/5Kxf41PDRmwY1shdngn99e/b7e6d213048b7ec6940b445691cac402/TGlxdWlkX3Jvc2VfZnJlc2gucG5n/1080w-1080h/rinso-molto-deterjen-cair-rose-fresh-packshot.jpg'),
                buildProductCard('Minyak Bimoli', 'Rp. 15.000',
                    'https://dutalia.membercard.id/storage/dutalia/products/d97d3c86-bed6-441d-9f83-a41b3712b8d5.jpg'),
                buildProductCard('Stella', 'Rp. 25.000',
                    'https://stellacms.stella-airfreshener.com//upload-gambar-produk/produk/KNoVc8_Packshot%20STELLA%20Solid%20AIO%2055gr%20New%20Packaging_Orange%20Zest.png'),
                buildProductCard('Minyak Kayu Putih', 'Rp. 10.000',
                    'https://www.prosehat.com/wp-content/uploads/2015/10/0001030_Minyak-Kayu-Putih-Cap-Lang-30ml.jpg'),
                buildProductCard('Kitkat', 'Rp. 30.000',
                    'https://www.kitkat.co.id/sites/default/files/2023-06/20230614_FI_KITKATBANNER_ACAK_PACKBANNER_450X450_07A-01_0.png'),
                buildProductCard('Sleeping Bag', 'Rp. 100.000',
                    'https://funshop.co.id/wp-content/uploads/2023/07/SLEEPING-BAG.jpg'),
                // Tambahkan produk lainnya
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProductCard(
      String productName, String productPrice, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Foto produk
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              ),
            ),

            // Informasi produk
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    productPrice,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            // Tombol tambah ke keranjang
            ElevatedButton(
              onPressed: () {
                // Handle tambah ke keranjang action
              },
              child: Text('Tambah ke Keranjang'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
