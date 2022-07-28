import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart.';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:test_app/modules/web_view/web_view_screen.dart';
import 'package:test_app/shared/cubit/cubit.dart';
// import 'package:webview_flutter/webview_flutter.dart';

Widget defaultButton({
  double width = double.infinity ,
  Color background = Colors.blue ,
  bool isUpperCase = true ,
  double radius = 0.0 ,
  required Function function ,
  required String text ,

}) => Container(
width: double.infinity,
  height: 45.0,
child: MaterialButton(
onPressed:() {},
child: Text(
      isUpperCase ? text.toUpperCase() : text,
        style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
    ),
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius,),
    color: Colors.blue,
  ),
);

Widget defaultTextButton({
  required VoidCallback function,
  required String text,
}) => TextButton(onPressed: function, child: Text(text.toUpperCase()),);

// Widget defaultFormField({
//   required TextEditingController controller,
//   required TextInputType type,
//   //Function onSubmit,
//   //Function onChange,
//   bool isPassword = false,
//   required Function validate,
//   required String label,
//   required IconData prefix,
//   required IconData suffix,
// }) => TextFormField(
//   controller: controller,
//   keyboardType: type,
//   obscureText: isPassword,
//   //onFieldSubmitted: onSubmit,
//   //onChanged: onChange,
//   validator: validate,
//   decoration: InputDecoration(
//     labelText: label,
//     prefixIcon: Icon(
//       prefix,
//     ),
//     suffixIcon: suffix != null ? Icon(
//       suffix,
//     ) : null,
//     border: OutlineInputBorder(),
//   ),
// );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function ? onSubmit,
  Function ? onChange,
  Function ? onTap,
  bool isPassword = false,
  bool isClickable = true,
  required String label,
  required IconData prefix,
  IconData ? suffix,
  Function ? suffixPressed ,
  var validate ,
}) => TextFormField(
  controller: controller,
  keyboardType: type,
  obscureText: isPassword,
  enabled: isClickable,
  onFieldSubmitted: (s)
  {
    onSubmit!(s);
  },
  onChanged: (s)
  {
    onChange!(s);
  },
  onTap: ()
  {
    onTap!();
  },
  validator:(value)
  {
    return validate(value);
  },
  decoration: InputDecoration(
    labelText: label,
    prefixIcon: Icon(
      prefix,
    ),
    suffixIcon: suffix != null ? IconButton(
      icon: Icon(
        suffix,
      ), onPressed: ()
          {
            suffixPressed!();
          },
    ) : null,
    border: OutlineInputBorder(),
  ),
);


Widget buildTasksItem(Map model ,context) => Dismissible(
  key: Key(model['id'].toString()),
  child: Padding(

    padding: const EdgeInsets.all(15.0),

    child: Row(

      children: [

        CircleAvatar(

          radius: 40.0,

          child: Text(

            '${model['time']}',

          ),

        ),

        SizedBox(

          width: 20.0,

        ),

        Expanded(

          child: Column(

            mainAxisSize: MainAxisSize.min,

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Text(

                '${model['title']}',

                style: TextStyle(

                  fontSize: 18.0,

                  fontWeight: FontWeight.bold,

                ),

              ),

              Text(

                '${model['data']}',

                style: TextStyle(

                  color: Colors.grey,

                ),

              ),

            ],

          ),

        ),

        SizedBox(

          width: 20.0,

        ),

        IconButton(

          onPressed: ()

          {

            AppCubit.get(context).updateData(status: 'done', id: model['id']);

          },

          icon: Icon(

            Icons.check_box,

            color: Colors.green,

          ),

        ),

        IconButton(

          onPressed: ()

          {

            AppCubit.get(context).updateData(status: 'archive', id: model['id']);

          },

          icon: Icon(

            Icons.archive,

            color: Colors.black45,



          ),

        ),

      ],

    ),

  ),
  onDismissed: (direction)
  {
    AppCubit.get(context).deleteData(id: model['id']);
  },
);

Widget myDivider() => Padding(
  padding: const EdgeInsetsDirectional.only(
    start: 20.0,
  ),
  child: Container(
    width: double.infinity,
    height: 1.0,
    color: Colors.grey[300],
  ),
);

Widget buildArticleItem(article , context) => InkWell(
  onTap: ()
  {
    navigateTo(context, WebViewScreen(article['url']),);
  },
  child:   Padding(

    padding: const EdgeInsets.all(20.0),

    child: Row(

      children: [

        Container(

          width: 120.0,

          height: 120.0,

          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(10.0,),

            image: DecorationImage(

              image: NetworkImage('${article['urlToImage']}'),

              fit: BoxFit.cover,

            ),

          ),

        ),

        SizedBox(

          width: 20.0,

        ),

        Expanded(

          child: Container(

            height: 120.0,

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              mainAxisAlignment: MainAxisAlignment.start,

              children:

              [

                Expanded(

                  child: Text(

                    '${article['title']}',

                    style: Theme.of(context).textTheme.bodyText1,

                    maxLines: 3,

                    overflow: TextOverflow.ellipsis,

                  ),

                ),

                Text(

                  '${article['publishedAt']}',

                  style: TextStyle(

                    color: Colors.grey,

                  ),

                ),

              ],

            ),

          ),

        ),

        SizedBox(

          width: 15.0,

        ),

      ],

    ),

  ),
);

Widget articleBuilder(list , context , {isSearch = false}) => Conditional.single(
    context: context,
    conditionBuilder: (context) => list.length > 0,
    widgetBuilder: (context) => ListView.separated(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) => buildArticleItem(list[index] , context),
      separatorBuilder: (context, index) => myDivider(),
      itemCount: 10,
    ),
    fallbackBuilder: (context) =>isSearch ? Container() : Center(child: CircularProgressIndicator() ,)
);

void navigateTo(context , widget) => Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => widget,
    ),
);

void navigateAndFinish(
context,
widget,
) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context)=>widget,),
        (Route<dynamic> route) => false,);