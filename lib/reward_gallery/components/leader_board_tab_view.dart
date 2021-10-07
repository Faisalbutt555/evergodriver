import 'package:flutter/material.dart';
import 'passenger_list_parent.dart';
import 'reward_postion_bar.dart';
import 'top10_passenger_list_tile.dart';
import 'user_avatar_with_name.dart';
import 'weekly_top_ten_heading.dart';

class LeaderBoardTabView extends StatefulWidget {
  const LeaderBoardTabView({
    Key? key,
  }) : super(key: key);

  @override
  State<LeaderBoardTabView> createState() => _LeaderBoardTabViewState();
}

class _LeaderBoardTabViewState extends State<LeaderBoardTabView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 28),
        child: Column(
          children: [
            SizedBox(
              height: 345,
              child: Stack(
                children: [
                  Positioned(
                    left: 66,
                    top: 20,
                    child: Column(
                      children: const [
                        UserAvatarwithName(
                          name: "Sofia Lara",
                          img: "user2.png",
                        ),
                        RewardPostionBar(
                          barImg: "bar1.png",
                          rewardImg: "reward-bronze.png",
                          position: "2",
                          postionTextBottom: 30,
                          postionTextLeft: 40,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 66,
                    top: 40,
                    child: Column(
                      children: const [
                        UserAvatarwithName(
                          name: "Tony Stark",
                          img: "user-1.png",
                        ),
                        RewardPostionBar(
                          barImg: "bar.png",
                          rewardImg: "reward-brown.png",
                          position: "3",
                          postionTextBottom: 30,
                          postionTextLeft: 15,
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: Column(
                        children: const [
                          UserAvatarwithName(
                            name: "Mitch John Mitch John Mitch John",
                            img: "round-profile.png",
                          ),
                          RewardPostionBar(
                            barImg: "reward-bar-mid.png",
                            rewardImg: "reward-yellow.png",
                            position: "1",
                            postionTextBottom: 30,
                            postionTextLeft: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            PassengerListParent(
              child: Column(
                children: [
                  const WeeklyTopTenHeading(),
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      Top10PassengerListTile(
                        passengerImgName: 'round-profile.png',
                        passengerName: "Mitch John",
                        passengerPoints: "1,250 Points",
                        rewardImgName: "reward-yellow.png",
                      ),
                      Top10PassengerListTile(
                        passengerImgName: ' user2.png',
                        passengerName: "Sofia Lara",
                        passengerPoints: "750 Points",
                        rewardImgName: "reward-bronze.png",
                      ),
                      Top10PassengerListTile(
                        passengerImgName: 'user-1.png',
                        passengerName: "Tony Stark",
                        passengerPoints: "1,250 Points",
                        rewardImgName: "reward-brown.png",
                      ),
                      Top10PassengerListTile(
                        passengerImgName: 'round-profile.png',
                        passengerName: "Mitch John",
                        passengerPoints: "1,250 Points",
                        rewardImgName: "reward-blue.png",
                      ),
                      Top10PassengerListTile(
                        passengerImgName: 'round-profile.png',
                        passengerName: "Mitch John",
                        passengerPoints: "1,250 Points",
                        rewardImgName: "reward-blue.png",
                      ),
                      Top10PassengerListTile(
                        passengerImgName: 'round-profile.png',
                        passengerName: "Mitch John",
                        passengerPoints: "1,250 Points",
                        rewardImgName: "reward-blue.png",
                      ),
                      Top10PassengerListTile(
                        passengerImgName: 'round-profile.png',
                        passengerName: "Mitch John",
                        passengerPoints: "1,250 Points",
                        rewardImgName: "reward-blue.png",
                      ),
                      Top10PassengerListTile(
                        passengerImgName: 'round-profile.png',
                        passengerName: "Mitch John",
                        passengerPoints: "1,250 Points",
                        rewardImgName: "reward-blue.png",
                      ),
                      Top10PassengerListTile(
                        passengerImgName: 'round-profile.png',
                        passengerName: "Mitch John",
                        passengerPoints: "1,250 Points",
                        rewardImgName: "reward-blue.png",
                      ),
                      Top10PassengerListTile(
                        passengerImgName: 'round-profile.png',
                        passengerName: "Mitch John",
                        passengerPoints: "1,250 Points",
                        rewardImgName: "reward-blue.png",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
