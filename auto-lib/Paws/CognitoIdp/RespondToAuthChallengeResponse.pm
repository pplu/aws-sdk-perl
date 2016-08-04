
package Paws::CognitoIdp::RespondToAuthChallengeResponse;
  use Moose;
  has AuthenticationResult => (is => 'ro', isa => 'Paws::CognitoIdp::AuthenticationResultType');
  has ChallengeName => (is => 'ro', isa => 'Str');
  has ChallengeParameters => (is => 'ro', isa => 'HashRef[Str]');
  has Session => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::RespondToAuthChallengeResponse

=head1 ATTRIBUTES


=head2 AuthenticationResult => L<Paws::CognitoIdp::AuthenticationResultType>





=head2 ChallengeName => Str

The challenge name.

Valid values are: C<"SMS_MFA">, C<"PASSWORD_VERIFIER">, C<"CUSTOM_CHALLENGE">, C<"DEVICE_SRP_AUTH">, C<"DEVICE_PASSWORD_VERIFIER">, C<"ADMIN_NO_SRP_AUTH">

=head2 ChallengeParameters => HashRef[Str]

The challenge parameters.



=head2 Session => Str

The session.




=cut

1;