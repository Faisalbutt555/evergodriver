import 'package:evergo/config/colors.dart';
import 'package:flutter/material.dart';
import 'components/leader_board_tab_view.dart';
import 'components/tab_bar_button.dart';
import 'components/tab_bar_parent.dart';

class RewardGalleryView extends StatefulWidget {
  const RewardGalleryView({Key? key}) : super(key: key);

  @override
  _RewardGalleryViewState createState() => _RewardGalleryViewState();
}

class _RewardGalleryViewState extends State<RewardGalleryView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int currentTabdIndex = 0;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() => currentTabdIndex = _tabController.index);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: kPrimaryDarkColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.keyboard_arrow_left_outlined,
              color: Colors.white,
            )),
        centerTitle: true,
        title: const Text(
          'Reward Gallery',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Leaderboard",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 0,
              ),
              padding: const EdgeInsets.symmetric(vertical: 0),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 2.0, color: Colors.white),
                ),
              ),
              child: TabBar(
                unselectedLabelColor: Colors.white,
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                tabs: <Tab>[
                  Tab(
                    child: TabBarButton(
                      buttonTitleText: 'Weekly',
                      onTap: () {
                        setState(() => currentTabdIndex = 0);
                        _tabController.animateTo(0);
                      },
                    ),
                  ),
                  Tab(
                    child: TabBarButton(
                      buttonTitleText: 'Monthly',
                      onTap: () {
                        setState(() => currentTabdIndex = 1);
                        _tabController.animateTo(1);
                      },
                    ),
                  ),
                  Tab(
                    child: TabBarButton(
                      buttonTitleText: 'Yearly',
                      onTap: () {
                        setState(() => currentTabdIndex = 2);
                        _tabController.animateTo(2);
                      },
                    ),
                  ),
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            TabBarParent(
              child: TabBarView(
                children: const <Widget>[
                  LeaderBoardTabView(),
                  LeaderBoardTabView(),
                  LeaderBoardTabView(),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
