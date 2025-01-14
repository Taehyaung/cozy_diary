import 'dart:io';

import 'package:cozydiary/Model/PostCoverModel.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import '../../../Data/dataResourse.dart';

class BuildCardHome extends StatelessWidget {
  final List<PostCoverData> PostCovers;
  final int index;
  const BuildCardHome({Key? key, required this.PostCovers, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
            PostCovers[index].cover,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 8),
            child: Text(PostCovers[index].title,
                softWrap: true,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.black,
                )),
          ),
          // Padding(
          //   padding: EdgeInsets.fromLTRB(15, 0, 15, 8),
          //   child: Row(
          //     children: <Widget>[
          //       Icon(
          //         Icons.sports_basketball,
          //       ),
          //       Text(PostCovers[index].categoryName,
          //           softWrap: true,
          //           maxLines: 2,
          //           style: TextStyle(color: Colors.black, fontSize: 12)),
          //     ],
          //   ),
          // ),
          Padding(
              padding: EdgeInsets.all(12).copyWith(top: 0, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage: NetworkImage(PostCovers[index].pic),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            PostCovers[index].username,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      )
                    ],
                  ),
                  LikeButton(
                    likeCount: PostCovers[index].likes,
                    isLiked: false,
                    size: 15,
                  )
                ],
              ))
        ],
      ),
    );
    // Card(
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
    //       Image.network(
    //         HomePageImage_List[index],
    //         fit: BoxFit.cover,
    //       ),
    //       Padding(
    //         padding: EdgeInsets.fromLTRB(15, 15, 15, 8),
    //         child: Text(PostText_List[index],
    //             softWrap: true,
    //             maxLines: 2,
    //             style: TextStyle(
    //               color: Colors.black,
    //             )),
    //       ),
    //       Padding(
    //         padding: EdgeInsets.fromLTRB(15, 0, 15, 8),
    //         child: Row(
    //           children: <Widget>[
    //             Icon(
    //               Icons.sports_basketball,
    //             ),
    //             Text("籃球",
    //                 softWrap: true,
    //                 maxLines: 2,
    //                 style: TextStyle(color: Colors.black, fontSize: 12)),
    //           ],
    //         ),
    //       ),
    //       Padding(
    //           padding: EdgeInsets.all(12).copyWith(top: 0, bottom: 10),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: <Widget>[
    //               Row(
    //                 children: <Widget>[
    //                   Padding(
    //                     padding: EdgeInsets.only(right: 5),
    //                     child: CircleAvatar(
    //                       radius: 12,
    //                       backgroundImage: NetworkImage(Image_List[3]),
    //                     ),
    //                   ),
    //                   Column(
    //                     mainAxisSize: MainAxisSize.min,
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: <Widget>[
    //                       Text(
    //                         '許悅',
    //                         style: TextStyle(
    //                             fontSize: 12,
    //                             fontWeight: FontWeight.bold,
    //                             color: Colors.black),
    //                       )
    //                     ],
    //                   )
    //                 ],
    //               ),
    //               LikeButton(
    //                 likeCount: 0,
    //                 isLiked: false,
    //                 size: 15,
    //               )
    //             ],
    //           ))
    //     ],
    //   ),
    // );
  }
}
