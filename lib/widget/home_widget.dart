import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({super.key});

  PageController controller = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
        borderSide: Divider.createBorderSide(context),
        borderRadius: BorderRadius.circular(15));
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Cari',
                  border: inputBorder,
                  focusedBorder: inputBorder,
                  enabledBorder: inputBorder),
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(alignment: Alignment.bottomCenter, children: [
              SizedBox(
                height: 100,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: controller,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                          height: 100,
                          child: Image.network(
                              'https://i0.wp.com/quick.co.id/wp-content/2020/09/HEADER.jpg?quality=50',
                              fit: BoxFit.cover)),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                          height: 100,
                          child: Image.network(
                            'https://i0.wp.com/quick.co.id/wp-content/2022/07/Untitled-1.png?quality=50',
                            fit: BoxFit.cover,
                          )),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                          height: 100,
                          child: Image.network(
                              'https://i0.wp.com/quick.co.id/wp-content/2017/07/Profil-CV-KHS.jpg?quality=50',
                              fit: BoxFit.cover)),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                          height: 100,
                          child: Image.network(
                              'https://i0.wp.com/quick.co.id/wp-content/2019/04/QH-11-Series.jpg?quality=50',
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  effect: ExpandingDotsEffect(
                      dotHeight: 4, dotWidth: 4, activeDotColor: Colors.red),
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Produk Unggulan',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
            GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {},
            )
          ],
        ),
      ),
    );
  }
}
