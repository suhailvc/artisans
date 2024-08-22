import 'package:artisans/models/insureplanmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreenAppBarWidget extends StatelessWidget {
  final String title;
  const MainScreenAppBarWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    var sizeQuery = MediaQuery.of(context).size;
    return Container(
      height: sizeQuery.width * 0.6,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Color(0xff7F1618),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      child: Column(
        children: [
          AppBar(
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                if (title == "Personal Information") Navigator.pop(context);
              },
              icon: const Icon(CupertinoIcons.back),
              color: Colors.white,
            ),
            backgroundColor: Colors.transparent,
            title: Text(
              title,
              style: const TextStyle(fontSize: 17, color: Colors.white),
            ),
            centerTitle: true,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SizedBox(
              height: sizeQuery.height * 0.09,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 18,
                                backgroundColor: const Color(0xffC79F38),
                                child: insureplaList[index].isCopleted
                                    ? const Icon(
                                        Icons.check,
                                        color: Color(0xff7F1618),
                                      )
                                    : null,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  'Step ${index + 1}',
                                  style: const TextStyle(
                                      color: Colors.white54, fontSize: 10),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  insureplaList[index].title,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              )
                            ],
                          ),
                      separatorBuilder: (context, index) => const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 3, vertical: 15),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 30,
                                  child: Divider(
                                    color: Color(0xffC79F38),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      itemCount: insureplaList.length),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
