# Generated from json/callresult_class.tt

package Paws::CognitoIdp::AdminRespondToAuthChallengeResponse;
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
               'AuthenticationResult' => {
                                           'class' => 'Paws::CognitoIdp::AuthenticationResultType',
                                           'type' => 'CognitoIdp_AuthenticationResultType'
                                         },
               'ChallengeName' => {
                                    'type' => 'Str'
                                  },
               'ChallengeParameters' => {
                                          'type' => 'CognitoIdp_ChallengeParametersType',
                                          'class' => 'Paws::CognitoIdp::ChallengeParametersType'
                                        },
               'Session' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminRespondToAuthChallengeResponse

=head1 ATTRIBUTES


=head2 AuthenticationResult => CognitoIdp_AuthenticationResultType

The result returned by the server in response to the authentication
request.


=head2 ChallengeName => Str

The name of the challenge. For more information, see .

Valid values are: C<"SMS_MFA">, C<"SOFTWARE_TOKEN_MFA">, C<"SELECT_MFA_TYPE">, C<"MFA_SETUP">, C<"PASSWORD_VERIFIER">, C<"CUSTOM_CHALLENGE">, C<"DEVICE_SRP_AUTH">, C<"DEVICE_PASSWORD_VERIFIER">, C<"ADMIN_NO_SRP_AUTH">, C<"NEW_PASSWORD_REQUIRED">
=head2 ChallengeParameters => CognitoIdp_ChallengeParametersType

The challenge parameters. For more information, see .


=head2 Session => Str

The session which should be passed both ways in challenge-response
calls to the service. If the or API call determines that the caller
needs to go through another challenge, they return a session with other
challenge parameters. This session should be passed as it is to the
next C<RespondToAuthChallenge> API call.


=head2 _request_id => Str


=cut

1;