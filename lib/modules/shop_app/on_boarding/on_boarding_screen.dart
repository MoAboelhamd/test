import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_app/modules/shop_app/login/shop_login_screen.dart';
import 'package:test_app/shared/components/components.dart';

class BoardingModel
{
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
});
}

class OnBoardingScreen extends StatefulWidget
{
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  List<BoardingModel> boarding =[
    BoardingModel(
        image: 'assets/images/on.png',
        title: 'On Board 1 Title',
        body: 'On Board 1 Body',
    ),
    BoardingModel(
        image: 'assets/images/on.png',
        title: 'On Board 2 Title',
        body: 'On Board 2 Body',
    ),
    BoardingModel(
        image: 'assets/images/on.png',
        title: 'On Board 3 Title',
        body: 'On Board 3 Body',
    ),
  ];

  bool isLast = false ;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        actions:
        [
          TextButton(onPressed: ()
          {
            navigateAndFinish(context, ShopLoginScreen());
          },
              child: Text('SKIP',))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children:
          [
            Expanded(
              child: PageView.builder(
                onPageChanged: (int index)
                {
                  if(index == boarding.length -1)
                    {
                      setState(()
                      {
                        isLast = true ;
                      });
                      print('last');
                    }else
                      {
                        print('not last');
                        setState(()
                        {
                          isLast = false ;
                        });
                      }
                },
                controller: boardController,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context , index) => buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              children:
               [
                SmoothPageIndicator(
                    controller: boardController,
                    count: boarding.length,
                    effect: ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: Colors.deepOrange,
                      dotHeight: 10,
                      expansionFactor: 3,
                      dotWidth: 10,
                      spacing: 5.0,
                    ),
                ),
                const Spacer(),
                FloatingActionButton(
                    onPressed: ()
                      {
                        if(isLast)
                        {
                          navigateAndFinish(context, ShopLoginScreen());
                        }else
                          {
                            boardController.nextPage(
                                duration: Duration(
                                  milliseconds: 750,
                                ),
                                curve: Curves.fastLinearToSlowEaseIn);
                          }
                      },
                    child: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) =>Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:
     [
      Expanded(
        child: Image(
          image: AssetImage(model.image),
        ),
      ),
      Text(
        model.title,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(
        height: 15.0,
      ),
      Text(
        model.body,
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
       const SizedBox(
         height: 15.0,
       ),
    ],
  );
}
