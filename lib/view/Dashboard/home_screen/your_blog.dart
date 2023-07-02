import 'package:doctorapp/view/Dashboard/home_screen/your_blog_edit.dart';
import 'package:intl/intl.dart';

import '../../allpackages.dart';

class YourBlog extends StatefulWidget {
  const YourBlog({super.key});

  @override
  State<YourBlog> createState() => _YourBlogState();
}

class _YourBlogState extends State<YourBlog> {
  // OtherBlogController otherBlogController = Get.find();
  YourBlogController yourBlogController = Get.put(YourBlogController());
  DateTime now = DateTime.now();

  // Formatting the date
  // String formattedDate = DateFormat('yyyy-MM-dd').format(now);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000.0.hp,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: yourBlogController.listdata.first.data.length,
          // otherBlogController.listdata.length,
          itemBuilder: (context, index) {
            var item = yourBlogController.listdata.first.data[index].imagePath;
            var itemnull = yourBlogController.listdata.first.data[index].image;
            print("images${item}");
            // otherBlogController.listdata[index];
            return Container(
              height: 20.0.hp,
              width: 80.0.wp,
              child: Card(
                child: Row(
                  children: [
                    Container(
                      height: 15.0.hp,
                      width: 30.0.wp,
                      child: itemnull.isEmpty
                          //  == null
                          ? Image.asset(
                              'assets/images/threedog.png',
                              fit: BoxFit.cover,
                            )
                          : Image.network(
                              item.toString(),
                              fit: BoxFit.cover,
                            ),
                    ),
                    SizedBox(
                      width: 4.0.wp,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 8.0,
                              ),
                              child: Container(
                                  height: 3.0.hp,
                                  width: 15.0.wp,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xffF2F2F2)),
                                  child: Center(
                                      child: Text(
                                    'Health',
                                    style: formhintstyle,
                                  ))),
                            ),
                            SizedBox(
                              width: 19.0.wp,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 8.0,
                              ),
                              child: Text(
                                DateFormat('yyyy-MM-dd').format(
                                    yourBlogController
                                        .listdata.first.data[index].createdAt),
                                style: formhintstyle,
                              ),
                            )
                          ],
                        ),
                        Text(
                          yourBlogController.listdata.first.data[index].topic
                              .toString(),
                          style: subtitleStyle,
                          maxLines: 2,
                        ),
                        Text(
                          yourBlogController.listdata.first.data[index].content
                              .toString(),
                          style: formhintstyle,
                          maxLines: 2,
                        ),
                        Container(
                            height: 3.0.hp,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Color(0xffB8B8B8),
                                  radius: 12,
                                  child: Icon(
                                    Icons.favorite,
                                    size: 15,
                                    color: screenbackground,
                                  ),
                                ),
                                SizedBox(
                                  width: 1.0.wp,
                                ),
                                Text(
                                  '100k',
                                  style: formhintstyle,
                                ),
                                SizedBox(
                                  width: 30.0.wp,
                                ),
                                InkWell(
                                    onTap: () {
                                      Get.to(YourBlogEdit(
                                        image: yourBlogController.listdata.first
                                            .data[index].imagePath
                                            .toString(),
                                        content: yourBlogController
                                            .listdata.first.data[index].content
                                            .toString(),
                                        topic: yourBlogController
                                            .listdata.first.data[index].topic
                                            .toString(),
                                        tags: yourBlogController
                                            .listdata.first.data[index].tags
                                            .toString(),
                                      ));
                                    },
                                    child: Container(
                                      width: 10.0.wp,
                                      child: Text(
                                        'Edit',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              decoration:
                                                  TextDecoration.underline,
                                              color: Color(0xff0F52BA)),
                                        ),
                                      ),
                                    ))
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
