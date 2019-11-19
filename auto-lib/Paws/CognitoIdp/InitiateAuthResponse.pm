# Generated from json/callresult_class.tt

package Paws::CognitoIdp::InitiateAuthResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_AuthenticationResultType CognitoIdp_ChallengeParametersType/;
  has AuthenticationResult => (is => 'ro', isa => CognitoIdp_AuthenticationResultType);
  has ChallengeName => (is => 'ro', isa => Str);
  has ChallengeParameters => (is => 'ro', isa => CognitoIdp_ChallengeParametersType);
  has Session => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Session' => {
                              'type' => 'Str'
                            },
               'ChallengeParameters' => {
                                          'class' => 'Paws::CognitoIdp::ChallengeParametersType',
                                          'type' => 'CognitoIdp_ChallengeParametersType'
                                        },
               'ChallengeName' => {
                                    'type' => 'Str'
                                  },
               'AuthenticationResult' => {
                                           'class' => 'Paws::CognitoIdp::AuthenticationResultType',
                                           'type' => 'CognitoIdp_AuthenticationResultType'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::InitiateAuthResponse

=head1 ATTRIBUTES


=head2 AuthenticationResult => CognitoIdp_AuthenticationResultType

The result of the authentication response. This is only returned if the
caller does not need to pass another challenge. If the caller does need
to pass another challenge before it gets tokens, C<ChallengeName>,
C<ChallengeParameters>, and C<Session> are returned.


=head2 ChallengeName => Str

The name of the challenge which you are responding to with this call.
This is returned to you in the C<AdminInitiateAuth> response if you
need to pass another challenge.

Valid values include the following. Note that all of these challenges
require C<USERNAME> and C<SECRET_HASH> (if applicable) in the
parameters.

=over

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

C<NEW_PASSWORD_REQUIRED>: For users which are required to change their
passwords after successful first login. This challenge should be passed
with C<NEW_PASSWORD> and any other required attributes.

=back


Valid values are: C<"SMS_MFA">, C<"SOFTWARE_TOKEN_MFA">, C<"SELECT_MFA_TYPE">, C<"MFA_SETUP">, C<"PASSWORD_VERIFIER">, C<"CUSTOM_CHALLENGE">, C<"DEVICE_SRP_AUTH">, C<"DEVICE_PASSWORD_VERIFIER">, C<"ADMIN_NO_SRP_AUTH">, C<"NEW_PASSWORD_REQUIRED">
=head2 ChallengeParameters => CognitoIdp_ChallengeParametersType

The challenge parameters. These are returned to you in the
C<InitiateAuth> response if you need to pass another challenge. The
responses in this parameter should be used to compute inputs to the
next call (C<RespondToAuthChallenge>).

All challenges require C<USERNAME> and C<SECRET_HASH> (if applicable).


=head2 Session => Str

The session which should be passed both ways in challenge-response
calls to the service. If the or API call determines that the caller
needs to go through another challenge, they return a session with other
challenge parameters. This session should be passed as it is to the
next C<RespondToAuthChallenge> API call.


=head2 _request_id => Str


=cut

1;