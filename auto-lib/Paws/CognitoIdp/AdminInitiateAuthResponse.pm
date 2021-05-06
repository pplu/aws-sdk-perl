
package Paws::CognitoIdp::AdminInitiateAuthResponse;
  use Moose;
  has AuthenticationResult => (is => 'ro', isa => 'Paws::CognitoIdp::AuthenticationResultType');
  has ChallengeName => (is => 'ro', isa => 'Str');
  has ChallengeParameters => (is => 'ro', isa => 'Paws::CognitoIdp::ChallengeParametersType');
  has Session => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminInitiateAuthResponse

=head1 ATTRIBUTES


=head2 AuthenticationResult => L<Paws::CognitoIdp::AuthenticationResultType>

The result of the authentication response. This is only returned if the
caller does not need to pass another challenge. If the caller does need
to pass another challenge before it gets tokens, C<ChallengeName>,
C<ChallengeParameters>, and C<Session> are returned.


=head2 ChallengeName => Str

The name of the challenge which you are responding to with this call.
This is returned to you in the C<AdminInitiateAuth> response if you
need to pass another challenge.

=over

=item *

C<MFA_SETUP>: If MFA is required, users who do not have at least one of
the MFA methods set up are presented with an C<MFA_SETUP> challenge.
The user must set up at least one MFA type to continue to authenticate.

=item *

C<SELECT_MFA_TYPE>: Selects the MFA type. Valid MFA options are
C<SMS_MFA> for text SMS MFA, and C<SOFTWARE_TOKEN_MFA> for TOTP
software token MFA.

=item *

C<SMS_MFA>: Next challenge is to supply an C<SMS_MFA_CODE>, delivered
via SMS.

=item *

C<PASSWORD_VERIFIER>: Next challenge is to supply
C<PASSWORD_CLAIM_SIGNATURE>, C<PASSWORD_CLAIM_SECRET_BLOCK>, and
C<TIMESTAMP> after the client-side SRP calculations.

=item *

C<CUSTOM_CHALLENGE>: This is returned if your custom authentication
flow determines that the user should pass another challenge before
tokens are issued.

=item *

C<DEVICE_SRP_AUTH>: If device tracking was enabled on your user pool
and the previous challenges were passed, this challenge is returned so
that Amazon Cognito can start tracking this device.

=item *

C<DEVICE_PASSWORD_VERIFIER>: Similar to C<PASSWORD_VERIFIER>, but for
devices only.

=item *

C<ADMIN_NO_SRP_AUTH>: This is returned if you need to authenticate with
C<USERNAME> and C<PASSWORD> directly. An app client must be enabled to
use this flow.

=item *

C<NEW_PASSWORD_REQUIRED>: For users which are required to change their
passwords after successful first login. This challenge should be passed
with C<NEW_PASSWORD> and any other required attributes.

=back


Valid values are: C<"SMS_MFA">, C<"SOFTWARE_TOKEN_MFA">, C<"SELECT_MFA_TYPE">, C<"MFA_SETUP">, C<"PASSWORD_VERIFIER">, C<"CUSTOM_CHALLENGE">, C<"DEVICE_SRP_AUTH">, C<"DEVICE_PASSWORD_VERIFIER">, C<"ADMIN_NO_SRP_AUTH">, C<"NEW_PASSWORD_REQUIRED">
=head2 ChallengeParameters => L<Paws::CognitoIdp::ChallengeParametersType>

The challenge parameters. These are returned to you in the
C<AdminInitiateAuth> response if you need to pass another challenge.
The responses in this parameter should be used to compute inputs to the
next call (C<AdminRespondToAuthChallenge>).

All challenges require C<USERNAME> and C<SECRET_HASH> (if applicable).

The value of the C<USER_ID_FOR_SRP> attribute will be the user's actual
username, not an alias (such as email address or phone number), even if
you specified an alias in your call to C<AdminInitiateAuth>. This is
because, in the C<AdminRespondToAuthChallenge> API
C<ChallengeResponses>, the C<USERNAME> attribute cannot be an alias.


=head2 Session => Str

The session which should be passed both ways in challenge-response
calls to the service. If C<AdminInitiateAuth> or
C<AdminRespondToAuthChallenge> API call determines that the caller
needs to go through another challenge, they return a session with other
challenge parameters. This session should be passed as it is to the
next C<AdminRespondToAuthChallenge> API call.


=head2 _request_id => Str


=cut

1;