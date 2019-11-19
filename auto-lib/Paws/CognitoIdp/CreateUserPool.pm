# Generated from json/callargs_class.tt

package Paws::CognitoIdp::CreateUserPool;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_DeviceConfigurationType CognitoIdp_UserPoolTagsType CognitoIdp_SchemaAttributeType CognitoIdp_SmsConfigurationType CognitoIdp_VerificationMessageTemplateType CognitoIdp_AdminCreateUserConfigType CognitoIdp_LambdaConfigType CognitoIdp_UserPoolPolicyType CognitoIdp_EmailConfigurationType CognitoIdp_UserPoolAddOnsType/;
  has AdminCreateUserConfig => (is => 'ro', isa => CognitoIdp_AdminCreateUserConfigType, predicate => 1);
  has AliasAttributes => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has AutoVerifiedAttributes => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has DeviceConfiguration => (is => 'ro', isa => CognitoIdp_DeviceConfigurationType, predicate => 1);
  has EmailConfiguration => (is => 'ro', isa => CognitoIdp_EmailConfigurationType, predicate => 1);
  has EmailVerificationMessage => (is => 'ro', isa => Str, predicate => 1);
  has EmailVerificationSubject => (is => 'ro', isa => Str, predicate => 1);
  has LambdaConfig => (is => 'ro', isa => CognitoIdp_LambdaConfigType, predicate => 1);
  has MfaConfiguration => (is => 'ro', isa => Str, predicate => 1);
  has Policies => (is => 'ro', isa => CognitoIdp_UserPoolPolicyType, predicate => 1);
  has PoolName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Schema => (is => 'ro', isa => ArrayRef[CognitoIdp_SchemaAttributeType], predicate => 1);
  has SmsAuthenticationMessage => (is => 'ro', isa => Str, predicate => 1);
  has SmsConfiguration => (is => 'ro', isa => CognitoIdp_SmsConfigurationType, predicate => 1);
  has SmsVerificationMessage => (is => 'ro', isa => Str, predicate => 1);
  has UsernameAttributes => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has UserPoolAddOns => (is => 'ro', isa => CognitoIdp_UserPoolAddOnsType, predicate => 1);
  has UserPoolTags => (is => 'ro', isa => CognitoIdp_UserPoolTagsType, predicate => 1);
  has VerificationMessageTemplate => (is => 'ro', isa => CognitoIdp_VerificationMessageTemplateType, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateUserPool');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoIdp::CreateUserPoolResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'PoolName' => 1
                  },
  'types' => {
               'AutoVerifiedAttributes' => {
                                             'type' => 'ArrayRef[Str|Undef]'
                                           },
               'LambdaConfig' => {
                                   'type' => 'CognitoIdp_LambdaConfigType',
                                   'class' => 'Paws::CognitoIdp::LambdaConfigType'
                                 },
               'EmailVerificationMessage' => {
                                               'type' => 'Str'
                                             },
               'AdminCreateUserConfig' => {
                                            'type' => 'CognitoIdp_AdminCreateUserConfigType',
                                            'class' => 'Paws::CognitoIdp::AdminCreateUserConfigType'
                                          },
               'Policies' => {
                               'class' => 'Paws::CognitoIdp::UserPoolPolicyType',
                               'type' => 'CognitoIdp_UserPoolPolicyType'
                             },
               'UsernameAttributes' => {
                                         'type' => 'ArrayRef[Str|Undef]'
                                       },
               'UserPoolTags' => {
                                   'class' => 'Paws::CognitoIdp::UserPoolTagsType',
                                   'type' => 'CognitoIdp_UserPoolTagsType'
                                 },
               'MfaConfiguration' => {
                                       'type' => 'Str'
                                     },
               'VerificationMessageTemplate' => {
                                                  'class' => 'Paws::CognitoIdp::VerificationMessageTemplateType',
                                                  'type' => 'CognitoIdp_VerificationMessageTemplateType'
                                                },
               'Schema' => {
                             'class' => 'Paws::CognitoIdp::SchemaAttributeType',
                             'type' => 'ArrayRef[CognitoIdp_SchemaAttributeType]'
                           },
               'SmsAuthenticationMessage' => {
                                               'type' => 'Str'
                                             },
               'AliasAttributes' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'PoolName' => {
                               'type' => 'Str'
                             },
               'EmailVerificationSubject' => {
                                               'type' => 'Str'
                                             },
               'SmsConfiguration' => {
                                       'type' => 'CognitoIdp_SmsConfigurationType',
                                       'class' => 'Paws::CognitoIdp::SmsConfigurationType'
                                     },
               'DeviceConfiguration' => {
                                          'class' => 'Paws::CognitoIdp::DeviceConfigurationType',
                                          'type' => 'CognitoIdp_DeviceConfigurationType'
                                        },
               'UserPoolAddOns' => {
                                     'type' => 'CognitoIdp_UserPoolAddOnsType',
                                     'class' => 'Paws::CognitoIdp::UserPoolAddOnsType'
                                   },
               'SmsVerificationMessage' => {
                                             'type' => 'Str'
                                           },
               'EmailConfiguration' => {
                                         'type' => 'CognitoIdp_EmailConfigurationType',
                                         'class' => 'Paws::CognitoIdp::EmailConfigurationType'
                                       }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateUserPool - Arguments for method CreateUserPool on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUserPool on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method CreateUserPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUserPool.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $CreateUserPoolResponse = $cognito -idp->CreateUserPool(
      PoolName              => 'MyUserPoolNameType',
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
      AliasAttributes => [
        'phone_number', ...    # values: phone_number, email, preferred_username
      ],                       # OPTIONAL
      AutoVerifiedAttributes => [
        'phone_number', ...    # values: phone_number, email
      ],                       # OPTIONAL
      DeviceConfiguration => {
        ChallengeRequiredOnNewDevice     => 1,    # OPTIONAL
        DeviceOnlyRememberedOnUserPrompt => 1,    # OPTIONAL
      },    # OPTIONAL
      EmailConfiguration => {
        ConfigurationSet => 'MySESConfigurationSet', # min: 1, max: 64; OPTIONAL
        EmailSendingAccount =>
          'COGNITO_DEFAULT',    # values: COGNITO_DEFAULT, DEVELOPER; OPTIONAL
        From                => 'MyStringType',          # OPTIONAL
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
      Schema => [
        {
          AttributeDataType =>
            'String',    # values: String, Number, DateTime, Boolean; OPTIONAL
          DeveloperOnlyAttribute => 1,    # OPTIONAL
          Mutable                => 1,    # OPTIONAL
          Name => 'MyCustomAttributeNameType',    # min: 1, max: 20; OPTIONAL
          NumberAttributeConstraints => {
            MaxValue => 'MyStringType',           # OPTIONAL
            MinValue => 'MyStringType',           # OPTIONAL
          },    # OPTIONAL
          Required                   => 1,    # OPTIONAL
          StringAttributeConstraints => {
            MaxLength => 'MyStringType',      # OPTIONAL
            MinLength => 'MyStringType',      # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
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
      UsernameAttributes => [
        'phone_number', ...    # values: phone_number, email
      ],                       # OPTIONAL
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

    # Results:
    my $UserPool = $CreateUserPoolResponse->UserPool;

    # Returns a L<Paws::CognitoIdp::CreateUserPoolResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/CreateUserPool>

=head1 ATTRIBUTES


=head2 AdminCreateUserConfig => CognitoIdp_AdminCreateUserConfigType

The configuration for C<AdminCreateUser> requests.



=head2 AliasAttributes => ArrayRef[Str|Undef]

Attributes supported as an alias for this user pool. Possible values:
B<phone_number>, B<email>, or B<preferred_username>.



=head2 AutoVerifiedAttributes => ArrayRef[Str|Undef]

The attributes to be auto-verified. Possible values: B<email>,
B<phone_number>.



=head2 DeviceConfiguration => CognitoIdp_DeviceConfigurationType

The device configuration.



=head2 EmailConfiguration => CognitoIdp_EmailConfigurationType

The email configuration.



=head2 EmailVerificationMessage => Str

A string representing the email verification message.



=head2 EmailVerificationSubject => Str

A string representing the email verification subject.



=head2 LambdaConfig => CognitoIdp_LambdaConfigType

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

=head2 Policies => CognitoIdp_UserPoolPolicyType

The policies associated with the new user pool.



=head2 B<REQUIRED> PoolName => Str

A string used to name the user pool.



=head2 Schema => ArrayRef[CognitoIdp_SchemaAttributeType]

An array of schema attributes for the new user pool. These attributes
can be standard or custom attributes.



=head2 SmsAuthenticationMessage => Str

A string representing the SMS authentication message.



=head2 SmsConfiguration => CognitoIdp_SmsConfigurationType

The SMS configuration.



=head2 SmsVerificationMessage => Str

A string representing the SMS verification message.



=head2 UsernameAttributes => ArrayRef[Str|Undef]

Specifies whether email addresses or phone numbers can be specified as
usernames when a user signs up.



=head2 UserPoolAddOns => CognitoIdp_UserPoolAddOnsType

Used to enable advanced security risk detection. Set the key
C<AdvancedSecurityMode> to the value "AUDIT".



=head2 UserPoolTags => CognitoIdp_UserPoolTagsType

The tag keys and values to assign to the user pool. A tag is a label
that you can use to categorize and manage user pools in different ways,
such as by purpose, owner, environment, or other criteria.



=head2 VerificationMessageTemplate => CognitoIdp_VerificationMessageTemplateType

The template for the verification message that the user sees when the
app requests permission to access the user's information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUserPool in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

