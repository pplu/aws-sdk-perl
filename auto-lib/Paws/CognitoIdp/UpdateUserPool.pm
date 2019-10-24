# Generated from json/callargs_class.tt

package Paws::CognitoIdp::UpdateUserPool;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_VerificationMessageTemplateType CognitoIdp_UserPoolTagsType CognitoIdp_LambdaConfigType CognitoIdp_UserPoolPolicyType CognitoIdp_SmsConfigurationType CognitoIdp_AdminCreateUserConfigType CognitoIdp_UserPoolAddOnsType CognitoIdp_DeviceConfigurationType CognitoIdp_EmailConfigurationType/;
  has AdminCreateUserConfig => (is => 'ro', isa => CognitoIdp_AdminCreateUserConfigType, predicate => 1);
  has AutoVerifiedAttributes => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has DeviceConfiguration => (is => 'ro', isa => CognitoIdp_DeviceConfigurationType, predicate => 1);
  has EmailConfiguration => (is => 'ro', isa => CognitoIdp_EmailConfigurationType, predicate => 1);
  has EmailVerificationMessage => (is => 'ro', isa => Str, predicate => 1);
  has EmailVerificationSubject => (is => 'ro', isa => Str, predicate => 1);
  has LambdaConfig => (is => 'ro', isa => CognitoIdp_LambdaConfigType, predicate => 1);
  has MfaConfiguration => (is => 'ro', isa => Str, predicate => 1);
  has Policies => (is => 'ro', isa => CognitoIdp_UserPoolPolicyType, predicate => 1);
  has SmsAuthenticationMessage => (is => 'ro', isa => Str, predicate => 1);
  has SmsConfiguration => (is => 'ro', isa => CognitoIdp_SmsConfigurationType, predicate => 1);
  has SmsVerificationMessage => (is => 'ro', isa => Str, predicate => 1);
  has UserPoolAddOns => (is => 'ro', isa => CognitoIdp_UserPoolAddOnsType, predicate => 1);
  has UserPoolId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UserPoolTags => (is => 'ro', isa => CognitoIdp_UserPoolTagsType, predicate => 1);
  has VerificationMessageTemplate => (is => 'ro', isa => CognitoIdp_VerificationMessageTemplateType, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateUserPool');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoIdp::UpdateUserPoolResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeviceConfiguration' => {
                                          'class' => 'Paws::CognitoIdp::DeviceConfigurationType',
                                          'type' => 'CognitoIdp_DeviceConfigurationType'
                                        },
               'SmsVerificationMessage' => {
                                             'type' => 'Str'
                                           },
               'SmsConfiguration' => {
                                       'class' => 'Paws::CognitoIdp::SmsConfigurationType',
                                       'type' => 'CognitoIdp_SmsConfigurationType'
                                     },
               'EmailVerificationMessage' => {
                                               'type' => 'Str'
                                             },
               'LambdaConfig' => {
                                   'class' => 'Paws::CognitoIdp::LambdaConfigType',
                                   'type' => 'CognitoIdp_LambdaConfigType'
                                 },
               'Policies' => {
                               'class' => 'Paws::CognitoIdp::UserPoolPolicyType',
                               'type' => 'CognitoIdp_UserPoolPolicyType'
                             },
               'MfaConfiguration' => {
                                       'type' => 'Str'
                                     },
               'VerificationMessageTemplate' => {
                                                  'class' => 'Paws::CognitoIdp::VerificationMessageTemplateType',
                                                  'type' => 'CognitoIdp_VerificationMessageTemplateType'
                                                },
               'SmsAuthenticationMessage' => {
                                               'type' => 'Str'
                                             },
               'UserPoolTags' => {
                                   'class' => 'Paws::CognitoIdp::UserPoolTagsType',
                                   'type' => 'CognitoIdp_UserPoolTagsType'
                                 },
               'EmailConfiguration' => {
                                         'class' => 'Paws::CognitoIdp::EmailConfigurationType',
                                         'type' => 'CognitoIdp_EmailConfigurationType'
                                       },
               'UserPoolId' => {
                                 'type' => 'Str'
                               },
               'EmailVerificationSubject' => {
                                               'type' => 'Str'
                                             },
               'UserPoolAddOns' => {
                                     'class' => 'Paws::CognitoIdp::UserPoolAddOnsType',
                                     'type' => 'CognitoIdp_UserPoolAddOnsType'
                                   },
               'AdminCreateUserConfig' => {
                                            'class' => 'Paws::CognitoIdp::AdminCreateUserConfigType',
                                            'type' => 'CognitoIdp_AdminCreateUserConfigType'
                                          },
               'AutoVerifiedAttributes' => {
                                             'type' => 'ArrayRef[Str|Undef]'
                                           }
             },
  'IsRequired' => {
                    'UserPoolId' => 1
                  }
}
;
    return $Params_map;
  }

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
        EmailSendingAccount =>
          'COGNITO_DEFAULT',    # values: COGNITO_DEFAULT, DEVELOPER; OPTIONAL
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
          MinimumLength                 => 1,    # min: 6, max: 99; OPTIONAL
          RequireLowercase              => 1,    # OPTIONAL
          RequireNumbers                => 1,    # OPTIONAL
          RequireSymbols                => 1,    # OPTIONAL
          RequireUppercase              => 1,    # OPTIONAL
          TemporaryPasswordValidityDays => 1,    # max: 365; OPTIONAL
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
        'MyTagKeysType' =>
          'MyTagValueType',    # key: min: 1, max: 128, value: max: 256
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


=head2 AdminCreateUserConfig => CognitoIdp_AdminCreateUserConfigType

The configuration for C<AdminCreateUser> requests.



=head2 AutoVerifiedAttributes => ArrayRef[Str|Undef]

The attributes that are automatically verified when the Amazon Cognito
service makes a request to update user pools.



=head2 DeviceConfiguration => CognitoIdp_DeviceConfigurationType

Device configuration.



=head2 EmailConfiguration => CognitoIdp_EmailConfigurationType

Email configuration.



=head2 EmailVerificationMessage => Str

The contents of the email verification message.



=head2 EmailVerificationSubject => Str

The subject of the email verification message.



=head2 LambdaConfig => CognitoIdp_LambdaConfigType

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

=head2 Policies => CognitoIdp_UserPoolPolicyType

A container with the policies you wish to update in a user pool.



=head2 SmsAuthenticationMessage => Str

The contents of the SMS authentication message.



=head2 SmsConfiguration => CognitoIdp_SmsConfigurationType

SMS configuration.



=head2 SmsVerificationMessage => Str

A container with information about the SMS verification message.



=head2 UserPoolAddOns => CognitoIdp_UserPoolAddOnsType

Used to enable advanced security risk detection. Set the key
C<AdvancedSecurityMode> to the value "AUDIT".



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool you want to update.



=head2 UserPoolTags => CognitoIdp_UserPoolTagsType

The tag keys and values to assign to the user pool. A tag is a label
that you can use to categorize and manage user pools in different ways,
such as by purpose, owner, environment, or other criteria.



=head2 VerificationMessageTemplate => CognitoIdp_VerificationMessageTemplateType

The template for verification messages.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUserPool in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

