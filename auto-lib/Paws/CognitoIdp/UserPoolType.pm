package Paws::CognitoIdp::UserPoolType;
  use Moose;
  has AliasAttributes => (is => 'ro', isa => 'ArrayRef[Str]');
  has AutoVerifiedAttributes => (is => 'ro', isa => 'ArrayRef[Str]');
  has CreationDate => (is => 'ro', isa => 'Str');
  has EmailVerificationMessage => (is => 'ro', isa => 'Str');
  has EmailVerificationSubject => (is => 'ro', isa => 'Str');
  has EstimatedNumberOfUsers => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str');
  has LambdaConfig => (is => 'ro', isa => 'Paws::CognitoIdp::LambdaConfigType');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has MfaConfiguration => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Policies => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolPolicyType');
  has SchemaAttributes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::SchemaAttributeType]');
  has SmsAuthenticationMessage => (is => 'ro', isa => 'Str');
  has SmsVerificationMessage => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UserPoolType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::UserPoolType object:

  $service_obj->Method(Att1 => { AliasAttributes => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::UserPoolType object:

  $result = $service_obj->Method(...);
  $result->Att1->AliasAttributes

=head1 DESCRIPTION

A container with information about the user pool type.

=head1 ATTRIBUTES


=head2 AliasAttributes => ArrayRef[Str]

  Specifies the attributes that are aliased in a user pool.


=head2 AutoVerifiedAttributes => ArrayRef[Str]

  Specifies the attributes that are auto-verified in a user pool.


=head2 CreationDate => Str

  The creation date of a user pool.


=head2 EmailVerificationMessage => Str

  The contents of the email verification message.


=head2 EmailVerificationSubject => Str

  The subject of the email verification message.


=head2 EstimatedNumberOfUsers => Int

  A number estimating the size of the user pool.


=head2 Id => Str

  The ID of the user pool.


=head2 LambdaConfig => L<Paws::CognitoIdp::LambdaConfigType>

  A container describing the AWS Lambda triggers associated with a user
pool.


=head2 LastModifiedDate => Str

  The last modified date of a user pool.


=head2 MfaConfiguration => Str

  Can be one of the following values:

=over

=item * C<OFF> - MFA tokens are not required and cannot be specified
during user registration.

=item * C<ON> - MFA tokens are required for all user registrations. You
can only specify required when you are initially creating a user pool.

=item * C<OPTIONAL> - Users have the option when registering to create
an MFA token.

=back



=head2 Name => Str

  The name of the user pool.


=head2 Policies => L<Paws::CognitoIdp::UserPoolPolicyType>

  A container describing the policies associated with a user pool.


=head2 SchemaAttributes => ArrayRef[L<Paws::CognitoIdp::SchemaAttributeType>]

  A container with the schema attributes of a user pool.


=head2 SmsAuthenticationMessage => Str

  The contents of the SMS authentication message.


=head2 SmsVerificationMessage => Str

  The contents of the SMS verification message.


=head2 Status => Str

  The status of a user pool.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

