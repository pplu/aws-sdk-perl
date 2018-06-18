
package Paws::CognitoIdp::UpdateUserPool;
  use Moose;
  has AdminCreateUserConfig => (is => 'ro', isa => 'Paws::CognitoIdp::AdminCreateUserConfigType');
  has AutoVerifiedAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
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
  has UserPoolAddOns => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolAddOnsType');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolTags => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolTagsType');
  has VerificationMessageTemplate => (is => 'ro', isa => 'Paws::CognitoIdp::VerificationMessageTemplateType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUserPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::UpdateUserPoolResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateUserPool - Arguments for method UpdateUserPool on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUserPool on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method UpdateUserPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUserPool.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $UpdateUserPoolResponse = $cognito -idp->UpdateUserPool(
      UserPoolId            => 'MyUserPoolIdType',
      AdminCreateUserConfig => {
        AllowAdminCreateUserOnly => 1,    # OPTIONAL
        InviteMessageTemplate    => {
          EmailMessage =>
            'MyEmailVerificationMessageType',    # min: 6, max: 20000; OPTIONAL
          EmailSubject =>
            'MyEmailVerificationSubjectType',    # min: 1, max: 140; OPTIONAL
          SMSMessage =>
            'MySmsVerificationMessageType',      # min: 6, max: 140; OPTIONAL
        },    # OPTIONAL
        UnusedAccountValidityDays => 1,    # max: 365; OPTIONAL
      },    # OPTIONAL
      AutoVerifiedAttributes => [
        'phone_number', ...    # values: phone_number, email
      ],                       # OPTIONAL
      DeviceConfiguration => {
        ChallengeRequiredOnNewDevice     => 1,    # OPTIONAL
        DeviceOnlyRememberedOnUserPrompt => 1,    # OPTIONAL
      },    # OPTIONAL
      EmailConfiguration => {
        ReplyToEmailAddress => 'MyEmailAddressType',    # OPTIONAL
        SourceArn => 'MyArnType',    # min: 20, max: 2048; OPTIONAL
      },    # OPTIONAL
      EmailVerificationMessage => 'MyEmailVerificationMessageType',   # OPTIONAL
      EmailVerificationSubject => 'MyEmailVerificationSubjectType',   # OPTIONAL
      LambdaConfig             => {
        CreateAuthChallenge => 'MyArnType',    # min: 20, max: 2048; OPTIONAL
        CustomMessage       => 'MyArnType',    # min: 20, max: 2048; OPTIONAL
        DefineAuthChallenge => 'MyArnType',    # min: 20, max: 2048; OPTIONAL
        PostAuthentication  => 'MyArnType',    # min: 20, max: 2048; OPTIONAL
        PostConfirmation    => 'MyArnType',    # min: 20, max: 2048; OPTIONAL
        PreAuthentication   => 'MyArnType',    # min: 20, max: 2048; OPTIONAL
        PreSignUp           => 'MyArnType',    # min: 20, max: 2048; OPTIONAL
        PreTokenGeneration  => 'MyArnType',    # min: 20, max: 2048; OPTIONAL
        UserMigration       => 'MyArnType',    # min: 20, max: 2048; OPTIONAL
        VerifyAuthChallengeResponse =>
          'MyArnType',                         # min: 20, max: 2048; OPTIONAL
      },    # OPTIONAL
      MfaConfiguration => 'OFF',    # OPTIONAL
      Policies         => {
        PasswordPolicy => {
          MinimumLength    => 1,    # min: 6, max: 99; OPTIONAL
          RequireLowercase => 1,    # OPTIONAL
          RequireNumbers   => 1,    # OPTIONAL
          RequireSymbols   => 1,    # OPTIONAL
          RequireUppercase => 1,    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      SmsAuthenticationMessage => 'MySmsVerificationMessageType',    # OPTIONAL
      SmsConfiguration         => {
        SnsCallerArn => 'MyArnType',       # min: 20, max: 2048; OPTIONAL
        ExternalId   => 'MyStringType',    # OPTIONAL
      },    # OPTIONAL
      SmsVerificationMessage => 'MySmsVerificationMessageType',    # OPTIONAL
      UserPoolAddOns         => {
        AdvancedSecurityMode => 'OFF',    # values: OFF, AUDIT, ENFORCED

      },    # OPTIONAL
      UserPoolTags => {
        'MyStringType' => 'MyStringType',    # key: OPTIONAL, value: OPTIONAL
      },    # OPTIONAL
      VerificationMessageTemplate => {
        DefaultEmailOption => 'CONFIRM_WITH_LINK'
        ,    # values: CONFIRM_WITH_LINK, CONFIRM_WITH_CODE; OPTIONAL
        EmailMessage =>
          'MyEmailVerificationMessageType',    # min: 6, max: 20000; OPTIONAL
        EmailMessageByLink =>
          'MyEmailVerificationMessageByLinkType', # min: 6, max: 20000; OPTIONAL
        EmailSubject =>
          'MyEmailVerificationSubjectType',       # min: 1, max: 140; OPTIONAL
        EmailSubjectByLink =>
          'MyEmailVerificationSubjectByLinkType',   # min: 1, max: 140; OPTIONAL
        SmsMessage =>
          'MySmsVerificationMessageType',           # min: 6, max: 140; OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/UpdateUserPool>

=head1 ATTRIBUTES


=head2 AdminCreateUserConfig => L<Paws::CognitoIdp::AdminCreateUserConfigType>

The configuration for C<AdminCreateUser> requests.



=head2 AutoVerifiedAttributes => ArrayRef[Str|Undef]

The attributes that are automatically verified when the Amazon Cognito
service makes a request to update user pools.



=head2 DeviceConfiguration => L<Paws::CognitoIdp::DeviceConfigurationType>

Device configuration.



=head2 EmailConfiguration => L<Paws::CognitoIdp::EmailConfigurationType>

Email configuration.



=head2 EmailVerificationMessage => Str

The contents of the email verification message.



=head2 EmailVerificationSubject => Str

The subject of the email verification message.



=head2 LambdaConfig => L<Paws::CognitoIdp::LambdaConfigType>

The AWS Lambda configuration information from the request to update the
user pool.



=head2 MfaConfiguration => Str

Can be one of the following values:

=over

=item *

C<OFF> - MFA tokens are not required and cannot be specified during
user registration.

=item *

C<ON> - MFA tokens are required for all user registrations. You can
only specify required when you are initially creating a user pool.

=item *

C<OPTIONAL> - Users have the option when registering to create an MFA
token.

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



=head2 UserPoolAddOns => L<Paws::CognitoIdp::UserPoolAddOnsType>

Used to enable advanced security risk detection. Set the key
C<AdvancedSecurityMode> to the value "AUDIT".



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool you want to update.



=head2 UserPoolTags => L<Paws::CognitoIdp::UserPoolTagsType>

The cost allocation tags for the user pool. For more information, see
Adding Cost Allocation Tags to Your User Pool
(http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html)



=head2 VerificationMessageTemplate => L<Paws::CognitoIdp::VerificationMessageTemplateType>

The template for verification messages.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUserPool in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

