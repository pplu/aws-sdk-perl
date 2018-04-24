
package Paws::CognitoIdp::CreateUserPool;
  use Moose;
  has AdminCreateUserConfig => (is => 'ro', isa => 'Paws::CognitoIdp::AdminCreateUserConfigType');
  has AliasAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AutoVerifiedAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DeviceConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::DeviceConfigurationType');
  has EmailConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::EmailConfigurationType');
  has EmailVerificationMessage => (is => 'ro', isa => 'Str');
  has EmailVerificationSubject => (is => 'ro', isa => 'Str');
  has LambdaConfig => (is => 'ro', isa => 'Paws::CognitoIdp::LambdaConfigType');
  has MfaConfiguration => (is => 'ro', isa => 'Str');
  has Policies => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolPolicyType');
  has PoolName => (is => 'ro', isa => 'Str', required => 1);
  has Schema => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::SchemaAttributeType]');
  has SmsAuthenticationMessage => (is => 'ro', isa => 'Str');
  has SmsConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::SmsConfigurationType');
  has SmsVerificationMessage => (is => 'ro', isa => 'Str');
  has UsernameAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UserPoolAddOns => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolAddOnsType');
  has UserPoolTags => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolTagsType');
  has VerificationMessageTemplate => (is => 'ro', isa => 'Paws::CognitoIdp::VerificationMessageTemplateType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::CreateUserPoolResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateUserPool - Arguments for method CreateUserPool on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUserPool on the 
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method CreateUserPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUserPool.

As an example:

  $service_obj->CreateUserPool(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AdminCreateUserConfig => L<Paws::CognitoIdp::AdminCreateUserConfigType>

The configuration for C<AdminCreateUser> requests.



=head2 AliasAttributes => ArrayRef[Str|Undef]

Attributes supported as an alias for this user pool. Possible values:
B<phone_number>, B<email>, or B<preferred_username>.



=head2 AutoVerifiedAttributes => ArrayRef[Str|Undef]

The attributes to be auto-verified. Possible values: B<email>,
B<phone_number>.



=head2 DeviceConfiguration => L<Paws::CognitoIdp::DeviceConfigurationType>

The device configuration.



=head2 EmailConfiguration => L<Paws::CognitoIdp::EmailConfigurationType>

The email configuration.



=head2 EmailVerificationMessage => Str

A string representing the email verification message.



=head2 EmailVerificationSubject => Str

A string representing the email verification subject.



=head2 LambdaConfig => L<Paws::CognitoIdp::LambdaConfigType>

The Lambda trigger configuration information for the new user pool.

In a push model, event sources (such as Amazon S3 and custom
applications) need permission to invoke a function. So you will need to
make an extra call to add permission for these event sources to invoke
your Lambda function.

For more information on using the Lambda API to add permission, see
AddPermission
(https://docs.aws.amazon.com/lambda/latest/dg/API_AddPermission.html).

For adding permission using the AWS CLI, see add-permission
(https://docs.aws.amazon.com/cli/latest/reference/lambda/add-permission.html).



=head2 MfaConfiguration => Str

Specifies MFA configuration details.

Valid values are: C<"OFF">, C<"ON">, C<"OPTIONAL">

=head2 Policies => L<Paws::CognitoIdp::UserPoolPolicyType>

The policies associated with the new user pool.



=head2 B<REQUIRED> PoolName => Str

A string used to name the user pool.



=head2 Schema => ArrayRef[L<Paws::CognitoIdp::SchemaAttributeType>]

An array of schema attributes for the new user pool. These attributes
can be standard or custom attributes.



=head2 SmsAuthenticationMessage => Str

A string representing the SMS authentication message.



=head2 SmsConfiguration => L<Paws::CognitoIdp::SmsConfigurationType>

The SMS configuration.



=head2 SmsVerificationMessage => Str

A string representing the SMS verification message.



=head2 UsernameAttributes => ArrayRef[Str|Undef]

Specifies whether email addresses or phone numbers can be specified as
usernames when a user signs up.



=head2 UserPoolAddOns => L<Paws::CognitoIdp::UserPoolAddOnsType>

Used to enable advanced security risk detection. Set the key
C<AdvancedSecurityMode> to the value "AUDIT".



=head2 UserPoolTags => L<Paws::CognitoIdp::UserPoolTagsType>

The cost allocation tags for the user pool. For more information, see
Adding Cost Allocation Tags to Your User Pool
(http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html)



=head2 VerificationMessageTemplate => L<Paws::CognitoIdp::VerificationMessageTemplateType>

The template for the verification message that the user sees when the
app requests permission to access the user's information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUserPool in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

