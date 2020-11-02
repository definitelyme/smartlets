import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/presentation/manager/auth_bloc.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class ChangePasswordForm extends StatelessWidget {
  final User user;

  const ChangePasswordForm(this.user, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
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
        builder: (context, state) {
          return PortalEntry(
            visible: context.bloc<AuthBloc>().state.isLoading,
            portal: App.circularLoadingOverlay,
            child: _FormWidget(bloc: context.bloc<AuthBloc>(), key: key),
          );
        },
      ),
    );
  }
}

class _FormWidget extends StatelessWidget {
  const _FormWidget({
    Key key,
    @required this.bloc,
  }) : super(key: key);

  final AuthBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: bloc.state.validate ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: AutoSizeText("Change Password", minFontSize: 18.0, style: TextStyle(fontWeight: FontWeight.w600)),
          ),
          //
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: AutoSizeText("Old Password", minFontSize: 15.0, style: TextStyle(fontWeight: FontWeight.w500)),
          ),
          //
          Stack(
            children: [
              TextFormField(
                maxLines: 1,
                enableSuggestions: false,
                autocorrect: false,
                cursorColor: App.theme.accentColor,
                enableInteractiveSelection: true,
                keyboardType: TextInputType.visiblePassword,
                obscureText: bloc.state.passwordHidden,
                textCapitalization: TextCapitalization.none,
                textInputAction: TextInputAction.done,
                autofillHints: [
                  AutofillHints.password,
                ],
                decoration: InputDecoration(
                  hintText: "Secret",
                  contentPadding: const EdgeInsets.only(left: 12.0, right: 45.0).copyWith(bottom: 30.0),
                ),
                onChanged: (value) => bloc.add(AuthEvent.passwordChanged(value, mode: FIELD_VALIDATION.BASIC)),
                validator: (value) => bloc.state.password.value.fold((error) => error.message, (r) => null),
                onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
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
                    icon: Icon(bloc.state.passwordHidden ? AppIcons.eyelash_closed : AppIcons.eyelash_open),
                    onPressed: () => bloc.add(AuthEvent.toggledPasswordVisibility()),
                  ),
                ),
              ),
            ],
          ),
          //
          VerticalSpace(height: App.height * 0.02),
          //
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: AutoSizeText("New Password", minFontSize: 15.0, style: TextStyle(fontWeight: FontWeight.w500)),
          ),
          //
          TextFormField(
            maxLines: 1,
            enableSuggestions: false,
            autocorrect: false,
            cursorColor: App.theme.accentColor,
            enableInteractiveSelection: true,
            keyboardType: TextInputType.visiblePassword,
            obscureText: bloc.state.passwordHidden,
            textCapitalization: TextCapitalization.none,
            textInputAction: TextInputAction.done,
            autofillHints: [
              AutofillHints.newPassword,
            ],
            decoration: InputDecoration(
              hintText: "New Secret",
              contentPadding: const EdgeInsets.only(left: 12.0, right: 45.0).copyWith(bottom: 30.0),
            ),
            onChanged: (value) => bloc.add(AuthEvent.newPasswordChanged(value)),
            validator: (value) => bloc.state.newPassword.value.fold((error) => error.message, (r) => null),
            onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
          ),
          //
          VerticalSpace(height: App.height * 0.05),
          //
          MkButton(
            text: "Change Password",
            minFontSize: 17.0,
            style: TextStyle(fontWeight: FontWeight.w700),
            onPressed: () => bloc.add(AuthEvent.updatePassword()),
          ),
          //
          VerticalSpace(height: App.height * 0.01),
        ],
      ),
    );
  }
}
