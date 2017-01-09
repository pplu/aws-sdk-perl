
package Paws::CognitoIdp::AdminRespondToAuthChallenge;
  use Moose;
  has ChallengeName => (is => 'ro', isa => 'Str', required => 1);
  has ChallengeResponses => (is => 'ro', isa => 'Paws::CognitoIdp::ChallengeResponsesType');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has Session => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AdminRespondToAuthChallenge');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AdminRespondToAuthChallengeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminRespondToAuthChallenge - Arguments for method AdminRespondToAuthChallenge on Paws::CognitoIdp

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminRespondToAuthChallenge on the 
Amazon Cognito Identity Provider service. Use the attributes of this class
as arguments to method AdminRespondToAuthChallenge.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminRespondToAuthChallenge.

As an example:

  $service_obj->AdminRespondToAuthChallenge(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChallengeName => Str

The name of the challenge.

Valid values are: C<"SMS_MFA">, C<"PASSWORD_VERIFIER">, C<"CUSTOM_CHALLENGE">, C<"DEVICE_SRP_AUTH">, C<"DEVICE_PASSWORD_VERIFIER">, C<"ADMIN_NO_SRP_AUTH">, C<"NEW_PASSWORD_REQUIRED">

=head2 ChallengeResponses => L<Paws::CognitoIdp::ChallengeResponsesType>

The challenge response.



=head2 B<REQUIRED> ClientId => Str

The client ID.



=head2 Session => Str

The session.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the Amazon Cognito user pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminRespondToAuthChallenge in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

