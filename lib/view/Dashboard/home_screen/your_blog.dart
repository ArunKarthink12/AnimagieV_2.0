import 'package:doctorapp/view/Dashboard/home_screen/your_blog_edit.dart';

import '../../allpackages.dart';

class YourBlog extends StatefulWidget {
  const YourBlog({super.key});

  @override
  State<YourBlog> createState() => _YourBlogState();
}

class _YourBlogState extends State<YourBlog> {
  // OtherBlogController otherBlogController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000.0.hp,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          // otherBlogController.listdata.length,
          itemBuilder: (context, index) {
            var item = "";
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
                        child: item == ""
                            ? Image.asset(
                                'assets/images/threedog.png',
                                fit: BoxFit.cover,
                              )
                            : Image.network(item)),
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
                              width: 13.0.wp,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 8.0,
                              ),
                              child: Text(
                                'Jan 4,2023',
                                style: formhintstyle,
                              ),
                            )
                          ],
                        ),
                        Text(
                          'How To Tell If Your Dog\n Is At A Healthy Weight',
                          style: subtitleStyle,
                          maxLines: 2,
                        ),
                        Text(
                          'For dogs to lead an active,......',
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
                                      Get.to(YourBlogEdit());
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
