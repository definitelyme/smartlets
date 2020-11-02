import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:smartlets/features/auth/presentation/manager/auth_bloc.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class EmailSentScreen extends StatelessWidget with AutoRouteWrapper {
  final String title;
  final String description;
  final Widget content;
  final Widget svg;
  final String buttonText;
  final bool showResendButton;
  final void Function() onTap;

  EmailSentScreen({
    Key key,
    @required this.title,
    this.description,
    this.content,
    Widget visual,
    @required this.buttonText,
    this.showResendButton = false,
    this.onTap,
  })  : svg = visual ?? AppAssets.emailSent,
        super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (_) => getIt<AuthBloc>(),
      child: BlocBuilder<AuthBloc, AuthState>(
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
    return Scaffold(
      appBar: Toolbar(leadingIcon: Icon(Icons.close_rounded)),
      body: Center(
        child: SingleChildScrollView(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          scrollDirection: Axis.vertical,
          controller: ScrollController(),
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: App.width * 0.04),
          child: Column(
            children: [
              svg,
              //
              VerticalSpace(height: App.height * 0.07),
              //
              Column(
                children: [
                  AutoSizeText(
                    "$title",
                    style: TextStyle(fontWeight: FontWeight.w600),
                    minFontSize: 20,
                  ),
                  //
                  VerticalSpace(height: App.height * 0.02),
                  //
                  !description.isNullOrBlank
                      ? AutoSizeText(
                          "$description",
                          minFontSize: 15,
                        )
                      : content ?? SizedBox.shrink(),
                  //
                  VerticalSpace(height: App.height * 0.03),
                  //
                  RaisedButton(
                    onPressed: onTap,
                    child: HorizontalSpace(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: AutoSizeText(
                            "$buttonText",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                            minFontSize: 15.0,
                            softWrap: true,
                            wrapWords: true,
                            textAlign: TextAlign.justify,
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
                  //
                  VerticalSpace(height: App.height * 0.015),
                  //
                  Visibility(
                    visible: showResendButton,
                    child: RaisedButton(
                      onPressed: () {
                        print("Please resend Email!");
                      },
                      child: HorizontalSpace(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: AutoSizeText(
                              "Resend Email",
                              style: TextStyle(fontWeight: FontWeight.w500),
                              minFontSize: 15.0,
                            ),
                          ),
                        ),
                        width: double.infinity,
                      ),
                      elevation: 0.0,
                      highlightElevation: 0.0,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                    ),
                  ),
                  //
                  VerticalSpace(height: App.height * 0.05),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
