import 'package:flutter/material.dart';
import 'package:latihan_responsi_prakmobile/list/blog_page.dart';
import 'package:latihan_responsi_prakmobile/list/news_page.dart';
import 'package:latihan_responsi_prakmobile/list/report_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Space Flight News'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Center(
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              _buildListItem(
                context,
                'News',
                'Get an overview of the latest Spaceflight news, from various sources! Easily link your users to the right websites.',
                NewsPage(),
                'https://cdn3d.iconscout.com/3d/premium/thumb/web-blog-4267883-3543882.png?f=webp',
              ),
              _buildListItem(
                context,
                'Blog',
                'Blogs often provide a more detailed overview of launches and missions. A must-have for the serious spaceflight enthusiast',
                BlogPage(),
                'https://cdn3d.iconscout.com/3d/premium/thumb/web-article-4267882-3543881.png',
              ),
              _buildListItem(
                context,
                'Report',
                'Space station and other missions often publish their data. With SNAPI, you can include it in your app as well!',
                ReportPage(),
                'https://cdn3d.iconscout.com/3d/premium/thumb/online-analysis-4585804-3811082.png?f=webp',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListItem(
      BuildContext context,
      String title,
      String description,
      Widget page,
      String imageUrl,
      ) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (builder) => page),
        );
      },
      child: Card(
        elevation: 3.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Image.network(
                imageUrl,
                width: MediaQuery.of(context).size.width,
                height: 300,
                fit: BoxFit.contain, // Menyesuaikan tinggi dan lebar tanpa memotong atau merubah aspek rasio
              ),
              SizedBox(height: 10),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}
