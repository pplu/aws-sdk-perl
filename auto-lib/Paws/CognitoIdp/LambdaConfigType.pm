package Paws::CognitoIdp::LambdaConfigType;
  use Moose;
  has CreateAuthChallenge => (is => 'ro', isa => 'Str');
  has CustomMessage => (is => 'ro', isa => 'Str');
  has DefineAuthChallenge => (is => 'ro', isa => 'Str');
  has PostAuthentication => (is => 'ro', isa => 'Str');
  has PostConfirmation => (is => 'ro', isa => 'Str');
  has PreAuthentication => (is => 'ro', isa => 'Str');
  has PreSignUp => (is => 'ro', isa => 'Str');
  has PreTokenGeneration => (is => 'ro', isa => 'Str');
  has UserMigration => (is => 'ro', isa => 'Str');
  has VerifyAuthChallengeResponse => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::LambdaConfigType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::LambdaConfigType object:

  $service_obj->Method(Att1 => { CreateAuthChallenge => $value, ..., VerifyAuthChallengeResponse => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::LambdaConfigType object:

  $result = $service_obj->Method(...);
  $result->Att1->CreateAuthChallenge

=head1 DESCRIPTION

Specifies the configuration for AWS Lambda triggers.

=head1 ATTRIBUTES


=head2 CreateAuthChallenge => Str

  Creates an authentication challenge.


=head2 CustomMessage => Str

  A custom Message AWS Lambda trigger.


=head2 DefineAuthChallenge => Str

  Defines the authentication challenge.


=head2 PostAuthentication => Str

  A post-authentication AWS Lambda trigger.


=head2 PostConfirmation => Str

  A post-confirmation AWS Lambda trigger.


=head2 PreAuthentication => Str

  A pre-authentication AWS Lambda trigger.


=head2 PreSignUp => Str

  A pre-registration AWS Lambda trigger.


=head2 PreTokenGeneration => Str

  A Lambda trigger that is invoked before token generation.


=head2 UserMigration => Str

  The user migration Lambda config type.


=head2 VerifyAuthChallengeResponse => Str

  Verifies the authentication challenge response.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

