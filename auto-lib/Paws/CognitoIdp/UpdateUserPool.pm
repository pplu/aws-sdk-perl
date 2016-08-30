
package Paws::CognitoIdp::UpdateUserPool;
  use Moose;
  has AutoVerifiedAttributes => (is => 'ro', isa => 'ArrayRef[Str]');
  has DeviceConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::DeviceConfigurationType');
  has EmailConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::EmailConfigurationType');
  has EmailVerificationMessage => (is => 'ro', isa => 'Str');
  has EmailVerificationSubject => (is => 'ro', isa => 'Str');
  has LambdaConfig => (is => 'ro', isa => 'Paws::CognitoIdp::LambdaConfigType');
  has MfaConfiguration => (is => 'ro', isa => 'Str');
  has Policies => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolPolicyType');
  has SmsAuthenticationMessage => (is => 'ro', isa => 'Str');
  has SmsConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::SmsConfigurationType');
  has SmsVerificationMessage => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUserPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::UpdateUserPoolResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateUserPool - Arguments for method UpdateUserPool on Paws::CognitoIdp

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUserPool on the 
Amazon Cognito Identity Provider service. Use the attributes of this class
as arguments to method UpdateUserPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUserPool.

As an example:

  $service_obj->UpdateUserPool(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AutoVerifiedAttributes => ArrayRef[Str]

The attributes that are automatically verified when the Amazon Cognito
service makes a request to update user pools.



=head2 DeviceConfiguration => L<Paws::CognitoIdp::DeviceConfigurationType>

Device configuration.



=head2 EmailConfiguration => L<Paws::CognitoIdp::EmailConfigurationType>

Email configuration.



=head2 EmailVerificationMessage => Str

The contents of the email verification message.



=head2 EmailVerificationSubject => Str

The subject of the email verfication message



=head2 LambdaConfig => L<Paws::CognitoIdp::LambdaConfigType>

The AWS Lambda configuration information from the request to update the
user pool.



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


Valid values are: C<"OFF">, C<"ON">, C<"OPTIONAL">

=head2 Policies => L<Paws::CognitoIdp::UserPoolPolicyType>

A container with the policies you wish to update in a user pool.



=head2 SmsAuthenticationMessage => Str

The contents of the SMS authentication message.



=head2 SmsConfiguration => L<Paws::CognitoIdp::SmsConfigurationType>

SMS configuration.



=head2 SmsVerificationMessage => Str

A container with information about the SMS verification message.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool you want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUserPool in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

