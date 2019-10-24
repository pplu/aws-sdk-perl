# Generated from default/object.tt
package Paws::CognitoIdp::UserPoolType;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str Int/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_VerificationMessageTemplateType CognitoIdp_UserPoolTagsType CognitoIdp_LambdaConfigType CognitoIdp_UserPoolPolicyType CognitoIdp_SmsConfigurationType CognitoIdp_AdminCreateUserConfigType CognitoIdp_SchemaAttributeType CognitoIdp_UserPoolAddOnsType CognitoIdp_DeviceConfigurationType CognitoIdp_EmailConfigurationType/;
  has AdminCreateUserConfig => (is => 'ro', isa => CognitoIdp_AdminCreateUserConfigType);
  has AliasAttributes => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Arn => (is => 'ro', isa => Str);
  has AutoVerifiedAttributes => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has CreationDate => (is => 'ro', isa => Str);
  has CustomDomain => (is => 'ro', isa => Str);
  has DeviceConfiguration => (is => 'ro', isa => CognitoIdp_DeviceConfigurationType);
  has Domain => (is => 'ro', isa => Str);
  has EmailConfiguration => (is => 'ro', isa => CognitoIdp_EmailConfigurationType);
  has EmailConfigurationFailure => (is => 'ro', isa => Str);
  has EmailVerificationMessage => (is => 'ro', isa => Str);
  has EmailVerificationSubject => (is => 'ro', isa => Str);
  has EstimatedNumberOfUsers => (is => 'ro', isa => Int);
  has Id => (is => 'ro', isa => Str);
  has LambdaConfig => (is => 'ro', isa => CognitoIdp_LambdaConfigType);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has MfaConfiguration => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Policies => (is => 'ro', isa => CognitoIdp_UserPoolPolicyType);
  has SchemaAttributes => (is => 'ro', isa => ArrayRef[CognitoIdp_SchemaAttributeType]);
  has SmsAuthenticationMessage => (is => 'ro', isa => Str);
  has SmsConfiguration => (is => 'ro', isa => CognitoIdp_SmsConfigurationType);
  has SmsConfigurationFailure => (is => 'ro', isa => Str);
  has SmsVerificationMessage => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has UsernameAttributes => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has UserPoolAddOns => (is => 'ro', isa => CognitoIdp_UserPoolAddOnsType);
  has UserPoolTags => (is => 'ro', isa => CognitoIdp_UserPoolTagsType);
  has VerificationMessageTemplate => (is => 'ro', isa => CognitoIdp_VerificationMessageTemplateType);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EmailConfigurationFailure' => {
                                                'type' => 'Str'
                                              },
               'DeviceConfiguration' => {
                                          'class' => 'Paws::CognitoIdp::DeviceConfigurationType',
                                          'type' => 'CognitoIdp_DeviceConfigurationType'
                                        },
               'Status' => {
                             'type' => 'Str'
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
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               'EstimatedNumberOfUsers' => {
                                             'type' => 'Int'
                                           },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'Arn' => {
                          'type' => 'Str'
                        },
               'AliasAttributes' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'VerificationMessageTemplate' => {
                                                  'class' => 'Paws::CognitoIdp::VerificationMessageTemplateType',
                                                  'type' => 'CognitoIdp_VerificationMessageTemplateType'
                                                },
               'SmsConfigurationFailure' => {
                                              'type' => 'Str'
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
               'UsernameAttributes' => {
                                         'type' => 'ArrayRef[Str|Undef]'
                                       },
               'Id' => {
                         'type' => 'Str'
                       },
               'SchemaAttributes' => {
                                       'class' => 'Paws::CognitoIdp::SchemaAttributeType',
                                       'type' => 'ArrayRef[CognitoIdp_SchemaAttributeType]'
                                     },
               'Domain' => {
                             'type' => 'Str'
                           },
               'UserPoolAddOns' => {
                                     'class' => 'Paws::CognitoIdp::UserPoolAddOnsType',
                                     'type' => 'CognitoIdp_UserPoolAddOnsType'
                                   },
               'EmailVerificationSubject' => {
                                               'type' => 'Str'
                                             },
               'CustomDomain' => {
                                   'type' => 'Str'
                                 },
               'AdminCreateUserConfig' => {
                                            'class' => 'Paws::CognitoIdp::AdminCreateUserConfigType',
                                            'type' => 'CognitoIdp_AdminCreateUserConfigType'
                                          },
               'Name' => {
                           'type' => 'Str'
                         },
               'AutoVerifiedAttributes' => {
                                             'type' => 'ArrayRef[Str|Undef]'
                                           }
             }
}
;
    return $Params_map;
  }


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

  $service_obj->Method(Att1 => { AdminCreateUserConfig => $value, ..., VerificationMessageTemplate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::UserPoolType object:

  $result = $service_obj->Method(...);
  $result->Att1->AdminCreateUserConfig

=head1 DESCRIPTION

A container for information about the user pool.

=head1 ATTRIBUTES


=head2 AdminCreateUserConfig => CognitoIdp_AdminCreateUserConfigType

  The configuration for C<AdminCreateUser> requests.


=head2 AliasAttributes => ArrayRef[Str|Undef]

  Specifies the attributes that are aliased in a user pool.


=head2 Arn => Str

  The Amazon Resource Name (ARN) for the user pool.


=head2 AutoVerifiedAttributes => ArrayRef[Str|Undef]

  Specifies the attributes that are auto-verified in a user pool.


=head2 CreationDate => Str

  The date the user pool was created.


=head2 CustomDomain => Str

  A custom domain name that you provide to Amazon Cognito. This parameter
applies only if you use a custom domain to host the sign-up and sign-in
pages for your application. For example: C<auth.example.com>.

For more information about adding a custom domain to your user pool,
see Using Your Own Domain for the Hosted UI
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html).


=head2 DeviceConfiguration => CognitoIdp_DeviceConfigurationType

  The device configuration.


=head2 Domain => Str

  Holds the domain prefix if the user pool has a domain associated with
it.


=head2 EmailConfiguration => CognitoIdp_EmailConfigurationType

  The email configuration.


=head2 EmailConfigurationFailure => Str

  The reason why the email configuration cannot send the messages to your
users.


=head2 EmailVerificationMessage => Str

  The contents of the email verification message.


=head2 EmailVerificationSubject => Str

  The subject of the email verification message.


=head2 EstimatedNumberOfUsers => Int

  A number estimating the size of the user pool.


=head2 Id => Str

  The ID of the user pool.


=head2 LambdaConfig => CognitoIdp_LambdaConfigType

  The AWS Lambda triggers associated with the user pool.


=head2 LastModifiedDate => Str

  The date the user pool was last modified.


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



=head2 Name => Str

  The name of the user pool.


=head2 Policies => CognitoIdp_UserPoolPolicyType

  The policies associated with the user pool.


=head2 SchemaAttributes => ArrayRef[CognitoIdp_SchemaAttributeType]

  A container with the schema attributes of a user pool.


=head2 SmsAuthenticationMessage => Str

  The contents of the SMS authentication message.


=head2 SmsConfiguration => CognitoIdp_SmsConfigurationType

  The SMS configuration.


=head2 SmsConfigurationFailure => Str

  The reason why the SMS configuration cannot send the messages to your
users.


=head2 SmsVerificationMessage => Str

  The contents of the SMS verification message.


=head2 Status => Str

  The status of a user pool.


=head2 UsernameAttributes => ArrayRef[Str|Undef]

  Specifies whether email addresses or phone numbers can be specified as
usernames when a user signs up.


=head2 UserPoolAddOns => CognitoIdp_UserPoolAddOnsType

  The user pool add-ons.


=head2 UserPoolTags => CognitoIdp_UserPoolTagsType

  The tags that are assigned to the user pool. A tag is a label that you
can apply to user pools to categorize and manage them in different
ways, such as by purpose, owner, environment, or other criteria.


=head2 VerificationMessageTemplate => CognitoIdp_VerificationMessageTemplateType

  The template for verification messages.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

