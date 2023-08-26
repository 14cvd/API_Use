import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/service/get_request.dart';
import 'package:url_launcher/url_launcher.dart';

class FutureWidget extends StatefulWidget {
  const FutureWidget({
    super.key,
  });

  @override
  State<FutureWidget> createState() => _FutureWidgetState();
}

class _FutureWidgetState extends State<FutureWidget> {
  final Future<List<NewsModel>> _newsData = GetMethod.getRequestNews();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _newsData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var data = snapshot.data!;

          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              var item = data[index];
              final Uri url = Uri.parse(item.url.toString());
              // ignore: no_leading_underscores_for_local_identifiers
              Future<void> _launchUrl() async {
                if (!await launchUrl(url)) {
                  throw Exception('Could not launch $url');
                }
              }

              return InkWell(
                onTap: _launchUrl,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: index % 2 == 0 ? Colors.white : Colors.amber,
                    child: ListTile(
                      title: Card(
                        child: ListTile(
                            title: Text(item.title.toString()),
                            subtitle: Text(item.content.toString())),
                      ),
                      subtitle: Text("Author :${item.author}"),
                    ),
                  ),
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("None Page"),
          );
        } else {
          return Center(child: SpinKitPianoWave(
            itemBuilder: (BuildContext context, int index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: index.isEven ? Colors.amber.shade300 : Colors.white,
                ),
              );
            },
          ));
        }
      },
    );
  }
}
