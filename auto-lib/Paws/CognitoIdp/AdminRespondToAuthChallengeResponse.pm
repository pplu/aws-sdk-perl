
package Paws::CognitoIdp::AdminRespondToAuthChallengeResponse;
  use Moose;
  has AuthenticationResult => (is => 'ro', isa => 'Paws::CognitoIdp::AuthenticationResultType');
  has ChallengeName => (is => 'ro', isa => 'Str');
  has ChallengeParameters => (is => 'ro', isa => 'Paws::CognitoIdp::ChallengeParametersType');
  has Session => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminRespondToAuthChallengeResponse

=head1 ATTRIBUTES


=head2 AuthenticationResult => L<Paws::CognitoIdp::AuthenticationResultType>

The result returned by the server in response to the authentication
request.


=head2 ChallengeName => Str

The name of the challenge. For more information, see AdminInitiateAuth
(https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminInitiateAuth.html).

Valid values are: C<"SMS_MFA">, C<"SOFTWARE_TOKEN_MFA">, C<"SELECT_MFA_TYPE">, C<"MFA_SETUP">, C<"PASSWORD_VERIFIER">, C<"CUSTOM_CHALLENGE">, C<"DEVICE_SRP_AUTH">, C<"DEVICE_PASSWORD_VERIFIER">, C<"ADMIN_NO_SRP_AUTH">, C<"NEW_PASSWORD_REQUIRED">
=head2 ChallengeParameters => L<Paws::CognitoIdp::ChallengeParametersType>

The challenge parameters. For more information, see AdminInitiateAuth
(https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminInitiateAuth.html).


=head2 Session => Str

The session which should be passed both ways in challenge-response
calls to the service. If the caller needs to go through another
challenge, they return a session with other challenge parameters. This
session should be passed as it is to the next C<RespondToAuthChallenge>
API call.


=head2 _request_id => Str


=cut

1;