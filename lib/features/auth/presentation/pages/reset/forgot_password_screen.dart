import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:smartlets/features/auth/presentation/manager/auth_bloc.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class ForgotPasswordScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (_) => getIt<AuthBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listenWhen: (prev, current) => prev.authStatus.isSome() && current.authStatus.isSome(),
        listener: (context, state) => state.authStatus.fold(
          () => null,
          (option) => option.fold(
            (failure) => Flushbar(
              duration: const Duration(seconds: 5),
              icon: Icon(Icons.error, color: Colors.red),
              messageText: AutoSizeText(failure.message),
              borderRadius: 8,
              dismissDirection: FlushbarDismissDirection.HORIZONTAL,
              margin: EdgeInsets.all(8),
              flushbarPosition: FlushbarPosition.TOP,
              shouldIconPulse: true,
              backgroundColor: Theme.of(context).primaryColor,
            ).show(context),
            (_) => null,
          ),
        ),
        buildWhen: (prev, current) => prev.isLoading != current.isLoading,
        builder: (context, _) => PortalEntry(
          visible: context.bloc<AuthBloc>().state.isLoading,
          portal: App.circularLoadingOverlay,
          child: this,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final bloc = context.bloc<AuthBloc>();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: Toolbar(leadingIcon: Icon(Icons.close_rounded)),
      body: Stack(
        children: [
          AppAssets.doodle,
          //
          Positioned(
            child: Container(color: App.backgroundOverlayColor),
          ),
          //
          Center(
            child: SingleChildScrollView(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              scrollDirection: Axis.vertical,
              controller: ScrollController(),
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: App.width * 0.04),
              child: Column(
                children: [
                  AppAssets.unlockPassword,
                  //
                  VerticalSpace(height: App.height * 0.07),
                  //
                  Column(
                    children: [
                      AutoSizeText(
                        "Forgot Password?",
                        style: TextStyle(fontWeight: FontWeight.w600),
                        minFontSize: 20,
                      ),
                      //
                      VerticalSpace(height: App.height * 0.02),
                      //
                      AutoSizeText(
                        "Enter the email address associated with your account.",
                        minFontSize: 15,
                      ),
                      //
                      VerticalSpace(height: App.height * 0.03),
                      //
                      BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, _) => Form(
                          autovalidateMode: bloc.state.validate ? AutovalidateMode.always : AutovalidateMode.disabled,
                          child: TextFormField(
                            maxLines: 1,
                            enableSuggestions: true,
                            autocorrect: false,
                            cursorColor: App.theme.accentColor,
                            enableInteractiveSelection: true,
                            keyboardType: TextInputType.emailAddress,
                            textCapitalization: TextCapitalization.none,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              labelText: "Email address",
                              hintText: "name@email.com",
                            ),
                            autofillHints: [
                              AutofillHints.email,
                            ],
                            onChanged: (value) => bloc.add(AuthEvent.emailChanged(value)),
                            validator: (value) => bloc.state.emailAddress.value.fold((error) => error.message, (r) => null),
                            onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                          ),
                        ),
                      ),
                      //
                      VerticalSpace(height: App.height * 0.04),
                      //
                      RaisedButton(
                        onPressed: () => bloc.add(AuthEvent.emailPasswordReset()),
                        // onPressed: () => navigator.pushEmailSentScreen(
                        //   title: "Password Reset Email Sent",
                        //   visual: AppAssets.unlockPassword,
                        //   buttonText: "Check Email",
                        //   content: AutoSizeText.rich(TextSpan(children: [
                        //     TextSpan(text: "An email has been sent to your email address "),
                        //     TextSpan(text: "ch.....@g....com", style: TextStyle(color: AppColors.accentColor)),
                        //     TextSpan(text: ". Follow the instruction in the email to reset your password."),
                        //   ])),
                        //   onTap: () {
                        //     print("Hello reset guy");
                        //   },
                        // ),
                        child: HorizontalSpace(
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12.0),
                              child: AutoSizeText(
                                "Reset Password",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                                minFontSize: 15.0,
                              ),
                            ),
                          ),
                          width: double.infinity,
                        ),
                        elevation: 0.8,
                        highlightElevation: 1.0,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        color: Theme.of(context).accentColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
