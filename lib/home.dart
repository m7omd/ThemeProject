import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_theme/theme/mode.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, theme, child) {
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () => {
                    theme.setDarkMode()
                  },
                  child: Text('Dark'),
                ),
                FloatingActionButton(
                  onPressed: () => {
                    theme.setLightMode()
                  },
                  child: Text('Light'),
                ),
              ],
            ),
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Icon(Icons.favorite),
                  Icon(Icons.print),
                  Icon(Icons.phone_android),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'hallo ,im mahmoud mohsen i software engimeering in 6 october in ocmputer sceince',
                          // style:Theme.of(context).textTheme.headline2,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'hallo ,im mahmoud mohsen i software engimeering in 6 october in ocmputer sceince',
                          //style:Theme.of(context).textTheme.bodyText1,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'hallo ,im mahmoud mohsen i software engimeering in 6 october in ocmputer sceince',
                          style: Theme.of(context).textTheme.subtitle1,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.print),
                Icon(Icons.phone_android),
              ],
            ),
          ),
        );
      },
    );
  }
}
