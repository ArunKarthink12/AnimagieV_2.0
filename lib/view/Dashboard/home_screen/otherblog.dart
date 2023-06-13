import '../../allpackages.dart';
import 'blog_details.dart';

class OtherBlog extends StatefulWidget {
  const OtherBlog({super.key});

  @override
  State<OtherBlog> createState() => _OtherBlogState();
}

class _OtherBlogState extends State<OtherBlog> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.to(BlogDetails());
            },
            child: Container(
              height: 20.0.hp,
              width: 80.0.wp,
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 18.0.hp,
                          width: 35.0.wp,
                          child: Image.asset(
                            'assets/images/threedog.png',
                            fit: BoxFit.fill,
                          )),
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
                                )
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
