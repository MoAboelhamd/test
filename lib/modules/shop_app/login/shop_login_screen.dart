import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:test_app/modules/shop_app/login/cubit/cubit.dart';
import 'package:test_app/modules/shop_app/login/cubit/states.dart';
import 'package:test_app/modules/shop_app/register/register_screen.dart';
import 'package:test_app/shared/components/components.dart';
import 'package:flutter_conditional_rendering/conditional.dart';


class ShopLoginScreen extends StatelessWidget
{

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return BlocProvider(
      create: (BuildContext context) => ShopLoginCubit(),
      child: BlocConsumer<ShopLoginCubit , ShopLoginStates>(
         listener: (context , state)
         {
           if(state is ShopLoginSuccessState)
             {
               if(state.loginModel!.status == true)
               {
                 print(state.loginModel!.message);
                 print(state.loginModel!.data!.token);

                 Fluttertoast.showToast(
                     msg: state.loginModel!.message,
                     toastLength: Toast.LENGTH_LONG,
                     gravity: ToastGravity.BOTTOM,
                     timeInSecForIosWeb: 5,
                     backgroundColor: Colors.green,
                     textColor: Colors.white,
                     fontSize: 16.0
                 );
               }else{
                 if(state.loginModel!.status == false)
                 {
                   Fluttertoast.showToast(
                       msg: state.loginModel!.message,
                       toastLength: Toast.LENGTH_LONG,
                       gravity: ToastGravity.BOTTOM,
                       timeInSecForIosWeb: 5,
                       backgroundColor: Colors.red,
                       textColor: Colors.white,
                       fontSize: 16.0
                   );
                 }
               }
             }
         },
        builder: (context , state)
        {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Text(
                          'LOGIN',
                          style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: Colors.black
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'login now to browse our hot offers',
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black54),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        defaultFormField(
                            controller: emailController,
                            type: TextInputType.emailAddress,
                            label: 'Email Address',
                            prefix: Icons.email_outlined,
                            validate:(value)
                            {
                              if(value.isEmpty)
                              {
                                return 'please enter your email address';
                              }
                            }),
                        const SizedBox(
                          height: 25.0,
                        ),
                        defaultFormField(
                            controller: passwordController,
                            type: TextInputType.visiblePassword,
                            suffix: ShopLoginCubit.get(context).suffix,
                            onSubmit: (value){
                              if(formKey.currentState!.validate())
                              {
                                ShopLoginCubit.get(context).userLogin(
                                    email: emailController.text,
                                    password: passwordController.text);
                              }
                            },
                            isPassword: ShopLoginCubit.get(context).isPassword,
                            suffixPressed: ()
                            {
                              ShopLoginCubit.get(context).changePasswordVisibility();
                            },
                            label: 'Password',
                            prefix: Icons.lock_outline,
                            validate:(value)
                            {
                              if(value.isEmpty)
                              {
                                return 'password is too short';
                              }
                            }),
                        const SizedBox(
                          height: 25.0,
                        ),
                        Container(
                          color: Colors.black38,
                          width: 450.0,
                          height: 50.0,
                          child: Conditional.single(
                            conditionBuilder:(context) => state is! ShopLoginLoadingState,
                            widgetBuilder: (context) => defaultTextButton(
                                  function: (){
                                    if(formKey.currentState!.validate())
                                    {
                                      ShopLoginCubit.get(context).userLogin(
                                          email: emailController.text,
                                          password: passwordController.text);
                                    }
                                  },
                                  text: 'login',),
                                  // isUpperCase: true,
                                  // background: Colors.deepOrangeAccent),
                            context: context,
                            fallbackBuilder: (context) => Center(child: CircularProgressIndicator())),
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            const Text(
                                'Don\'t have an acount ?'),
                            defaultTextButton(
                                function: ()
                                {
                                  navigateTo(context, RegisterScreen(),);
                                },
                                text: 'Register')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
