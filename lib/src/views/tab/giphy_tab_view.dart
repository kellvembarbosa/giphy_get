import 'package:flutter/material.dart';
import 'package:giphy_get/src/client/models/type.dart';

import 'giphy_tab_detail.dart';

class GiphyTabView extends StatelessWidget {
  final ScrollController scrollController;
  //final TabController tabController;
  final bool onlyGIF;

  const GiphyTabView({Key? key, required this.scrollController, /*required this.tabController,*/ required this.onlyGIF}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return onlyGIF
        ? GiphyTabDetail(
            type: GiphyType.gifs,
            scrollController: scrollController,
            key: null,
          )
        : TabBarView(
            //controller: tabController,
            children: [
              GiphyTabDetail(
                type: GiphyType.gifs,
                scrollController: scrollController,
                key: null,
              ),
              GiphyTabDetail(
                type: GiphyType.stickers,
                scrollController: scrollController,
              ),
              GiphyTabDetail(
                type: GiphyType.emoji,
                scrollController: scrollController,
              )
            ],
          );
  }
}
