import 'package:flutter/material.dart';

class Article {
  final String title, url, timestamp, summary, image, source;

  Article({
    required this.title,
    required this.url,
    required this.timestamp,
    required this.image,
    required this.summary,
    required this.source,
  });

  // It create an Article from JSON
  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: json["title"],
      image: json["banner_image"],
      summary: json["summary"],
      timestamp: json["time_published"],
      url: json["url"],
      source: json["source"],
    );
  }
}

// Demo Article
Article article = Article(
  title: "Warren Buffett's Berkshire Hathaway Slashes Stake in U.S. Bancorp",
  image: "https://i.imgur.com/sI4GvE6.png",
  url:
      "https://www.kiplinger.com/investing/stocks/warren-buffetts-berkshire-hathaway-slashes-stake-in-us-bancorp",
  timestamp: "20221111T173949",
  source: "Kiplinger",
  summary:
      "Warren Buffett's Berkshire Hathaway ( BRK.B ( opens in new tab ) , \$303.20 ) cut its stake in longtime holding U.S. Bancorp ( USB ( opens in new tab ) , \$44.87 ) by more than half.",
);
