import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/auth/presentation/manager/auth_bloc.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class CreateChildAccountPage extends StatelessWidget with AutoRouteWrapper {
  final _childEmailFieldFocus = FocusNode();
  final _childNameFieldFocus = FocusNode();
  final _passwordFieldFocus = FocusNode();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthBloc>(),
      child: BlocListener<AuthBloc, AuthState>(
        listenWhen: (prev, current) => prev.authStatus.isSome() && current.authStatus.isSome(),
        listener: (context, state) => state.authStatus.fold(
          () => null,
          (option) => option.fold(
            (failure) => Flushbar(
              duration: const Duration(seconds: 5),
              icon: const Icon(Icons.error, color: Colors.red),
              messageText: AutoSizeText(failure.message),
              borderRadius: 8,
              dismissDirection: FlushbarDismissDirection.HORIZONTAL,
              margin: const EdgeInsets.all(8),
              flushbarPosition: FlushbarPosition.TOP,
              shouldIconPulse: true,
              backgroundColor: Theme.of(context).primaryColor,
            ).show(context),
            (_) => null,
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      buildWhen: (prev, current) => prev.isLoading != current.isLoading,
      builder: (context, snapshot) {
        // ignore: close_sinks
        final _bloc = context.bloc<AuthBloc>();

        return PortalEntry(
          visible: context.bloc<AuthBloc>().state.isLoading,
          portal: App.circularLoadingOverlay,
          child: Scaffold(
            appBar: Toolbar(
              leadingCondition: inner(context).canPop(),
              leadingAction: () => inner(context).pop(),
            ),
            body: CustomScrollView(
              shrinkWrap: true,
              physics: Helpers.physics,
              clipBehavior: Clip.antiAlias,
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const Center(
                        child: AutoSizeText(
                          "Create Your Child’s Account",
                          maxLines: 1,
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                      //
                      VerticalSpace(height: App.height * 0.03),
                      //
                      Form(
                        child: AutofillGroup(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: App.width * 0.04),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: const AutoSizeText(
                                    "Guardian's E-mail Address",
                                    minFontSize: 15.0,
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ),
                                //
                                TextFormField(
                                  maxLines: 1,
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  cursorColor: Theme.of(context).accentColor,
                                  keyboardType: TextInputType.emailAddress,
                                  textCapitalization: TextCapitalization.none,
                                  textInputAction: TextInputAction.next,
                                  autovalidateMode: _bloc.state.validate ? AutovalidateMode.always : AutovalidateMode.disabled,
                                  decoration: const InputDecoration(hintText: "janedoe@email.com"),
                                  onChanged: (value) => _bloc.add(AuthEvent.guardianEmailChanged(value)),
                                  validator: (value) => _bloc.state.guardianEmailAddress.value.fold((error) => error.message, (r) => null),
                                  onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(_childNameFieldFocus),
                                ),
                                //
                                VerticalSpace(height: App.height * 0.02),
                                //
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: const AutoSizeText(
                                    "Child's Full Name",
                                    minFontSize: 15.0,
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ),
                                //
                                TextFormField(
                                  maxLines: 1,
                                  enableSuggestions: true,
                                  autocorrect: false,
                                  cursorColor: Theme.of(context).accentColor,
                                  keyboardType: TextInputType.text,
                                  textCapitalization: TextCapitalization.words,
                                  textInputAction: TextInputAction.next,
                                  focusNode: _childNameFieldFocus,
                                  autovalidateMode: _bloc.state.validate ? AutovalidateMode.always : AutovalidateMode.disabled,
                                  decoration: const InputDecoration(hintText: "John Doe Jnr."),
                                  autofillHints: [
                                    AutofillHints.name,
                                    AutofillHints.givenName,
                                    AutofillHints.middleName,
                                    AutofillHints.nickname,
                                    AutofillHints.familyName,
                                  ],
                                  onChanged: (value) => _bloc.add(AuthEvent.displayNameChanged(value)),
                                  validator: (value) => _bloc.state.displayName.value.fold((error) => error.message, (r) => null),
                                  onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(_childEmailFieldFocus),
                                ),
                                //
                                VerticalSpace(height: App.height * 0.02),
                                //
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: const AutoSizeText(
                                    "Child's Email Address",
                                    minFontSize: 15.0,
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ),
                                //
                                TextFormField(
                                  maxLines: 1,
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  cursorColor: Theme.of(context).accentColor,
                                  keyboardType: TextInputType.emailAddress,
                                  textCapitalization: TextCapitalization.none,
                                  textInputAction: TextInputAction.next,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  focusNode: _childEmailFieldFocus,
                                  decoration: InputDecoration(hintText: "jnr@email.com ( same as guardian's if empty )"),
                                  onChanged: (value) => _bloc.add(AuthEvent.emailChanged(value)),
                                  validator: (value) => _bloc.state.emailAddress.value.fold((error) => error.message, (r) => null),
                                  onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(_passwordFieldFocus),
                                ),
                                //
                                VerticalSpace(height: App.height * 0.02),
                                //
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: const AutoSizeText(
                                    "Child's Password",
                                    minFontSize: 15.0,
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ),
                                //
                                Stack(
                                  children: [
                                    TextFormField(
                                      maxLines: 1,
                                      enableSuggestions: false,
                                      autocorrect: false,
                                      cursorColor: Theme.of(context).accentColor,
                                      keyboardType: TextInputType.visiblePassword,
                                      obscureText: _bloc.state.passwordHidden,
                                      textCapitalization: TextCapitalization.none,
                                      textInputAction: TextInputAction.done,
                                      focusNode: _passwordFieldFocus,
                                      autovalidateMode: _bloc.state.validate ? AutovalidateMode.always : AutovalidateMode.disabled,
                                      autofillHints: [AutofillHints.newPassword],
                                      decoration: InputDecoration(
                                        hintText: "secret",
                                        contentPadding: const EdgeInsets.only(left: 12.0, right: 45.0).copyWith(bottom: 30.0),
                                      ),
                                      onChanged: (value) => _bloc.add(AuthEvent.newPasswordChanged(value)),
                                      validator: (value) => _bloc.state.newPassword.value.fold((error) => error.message, (r) => null),
                                      onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                                    ),
                                    //
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Material(
                                        color: Colors.transparent,
                                        shape: CircleBorder(),
                                        clipBehavior: Clip.hardEdge,
                                        child: IconButton(
                                          icon: Icon(_bloc.state.passwordHidden ? AppIcons.eyelash_closed : AppIcons.eyelash_open),
                                          onPressed: () => _bloc.add(AuthEvent.toggledPasswordVisibility()),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                //
                                VerticalSpace(height: App.height * 0.02),
                                //
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: const AutoSizeText(
                                    "Gender",
                                    minFontSize: 15.0,
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ),
                                //
                                ButtonTheme(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  alignedDropdown: true,
                                  layoutBehavior: ButtonBarLayoutBehavior.constrained,
                                  materialTapTargetSize: MaterialTapTargetSize.padded,
                                  child: DropdownButton<GenderType>(
                                    items: GenderType.items
                                        .toList()
                                        .map<DropdownMenuItem<GenderType>>(
                                          (item) => DropdownMenuItem<GenderType>(
                                            value: item,
                                            child: AutoSizeText(
                                              item.name,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              softWrap: true,
                                            ),
                                          ),
                                        )
                                        .toList(),
                                    hint: const Text("-- Select gender --"),
                                    value: _bloc.state.gender.getOrCrash,
                                    isExpanded: true,
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    iconSize: 19.0,
                                    isDense: true,
                                    underline: const SizedBox.shrink(),
                                    autofocus: true,
                                    onChanged: (value) => _bloc.add(AuthEvent.genderChanged(value)),
                                  ),
                                ),
                                //
                                VerticalSpace(height: App.height * 0.04),
                                //
                                MkButton(
                                  text: "Add",
                                  minFontSize: 17.0,
                                  style: const TextStyle(fontWeight: FontWeight.w700),
                                  onPressed: () => _bloc.add(const AuthEvent.createStudentAccount()),
                                ),
                                //
                                VerticalSpace(height: App.height * 0.015),
                                //
                                GestureDetector(
                                  onTap: () {},
                                  child: AutoSizeText.rich(
                                    TextSpan(
                                      children: [
                                        const TextSpan(
                                            text: "By clicking \"add\", you confirm that you are this child’s "
                                                "parent or legal guardian and agree to our"),
                                        const TextSpan(text: " "),
                                        TextSpan(
                                          text: "terms",
                                          style: TextStyle(
                                            color: Theme.of(context).accentColor,
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                        const TextSpan(text: " "),
                                        const TextSpan(text: "and"),
                                        const TextSpan(text: " "),
                                        TextSpan(
                                          text: "conditions.",
                                          style: TextStyle(
                                            color: Theme.of(context).accentColor,
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                      ],
                                    ),
                                    softWrap: true,
                                    maxLines: 3,
                                    style: const TextStyle(fontSize: 15.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
