/// Thrown if there already exists an account with the given email address.
const String EMAIL_ALREADY_IN_USE = "email-already-in-use";

/// Thrown if the email address is not valid.
const String INVALID_EMAIL = "invalid-email";

/// Thrown if the password is not strong enough.
const String WEAK_PASSWORD = "weak-password";

/// Thrown if the user corresponding to the given email has been disabled.
const String USER_DISABLED = "user-disabled";

/// Thrown if there is no user corresponding to the given email.
const String USER_NOT_FOUND = "user-not-found";

/// Thrown if the password is invalid for the given email, or the account corresponding to the email does not have a password set.
const String WRONG_PASSWORD = "wrong-password";

/// Thrown if the verification code of the credential is not valid.
const String INVALID_VERIFICATION_CODE = "invalid-verification-code";

/// Thrown if the verification ID of the credential is not valid.
const String INVALID_VERIFICATION_ID = "invalid-verification-id";

/// Thrown if the action code has expired.
const String EXPIRED_ACTION_CODE = "expired-action-code";

/// Thrown if the action code is invalid. This can happen if the code is malformed or has already been used.
const String INVALID_ACTION_CODE = "invalid-action-code";

/// Thrown if email/password accounts are not enabled. Enable email/password accounts in the Firebase Console, under the Auth tab.
const String OPERATION_NOT_ALLOWED = "operation-not-allowed";

/// The user must reauthenticate before this operation can be executed.
const String REQUIRES_RECENT_LOGIN = "requires-recent-login";

/// Thrown when invalid credential is supplied for Authentication
const String INVALID_CREDENTIAL = "invalid-credential";

/// Thrown when Firebase server receives
/// too many request from a device within a certain range of time
const String TOO_MANY_REQUESTS = "too-many-requests";

/// Thrown when a user tries to sign in a to a provider (such as Google) with an email that already exists
/// for another Firebase user's provider (such as Facebook).
///
/// OR
///
/// Thrown when this credential is already associated with a different user account.
const String ACCOUNT_EXISTS_WITH_DIFFERENT_CRED = "account-exists-with-different-credential";

/// Thrown if the account corresponding to the credential already exists among your users,
/// or is already linked to a Firebase User. For example, this error could be thrown
/// if you are upgrading an anonymous user to a Google user by linking a Google credential
/// to it and the Google credential used is already associated with an existing Firebase Google user.
/// The fields `email`, `phoneNumber`, and `credential` (AuthCredential) may be provided, depending on the type of credential.
/// You can recover from this error by signing in with `credential` directly via signInWithCredential.
const String CRED_ALREADY_IN_USE = "credential-already-in-use";

/// Thrown if the provider has already been linked to the user.
///
/// This error is thrown even if this is not the same provider's account that is currently linked to the user.
const String PROVIDER_ALREADY_LINKED = "provider-already-linked";
