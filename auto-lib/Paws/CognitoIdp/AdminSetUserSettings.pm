# Generated from json/callargs_class.tt

package Paws::CognitoIdp::AdminSetUserSettings;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_MFAOptionType/;
  has MFAOptions => (is => 'ro', isa => ArrayRef[CognitoIdp_MFAOptionType], required => 1, predicate => 1);
  has Username => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UserPoolId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AdminSetUserSettings');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoIdp::AdminSetUserSettingsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MFAOptions' => {
                                 'class' => 'Paws::CognitoIdp::MFAOptionType',
                                 'type' => 'ArrayRef[CognitoIdp_MFAOptionType]'
                               },
               'Username' => {
                               'type' => 'Str'
                             },
               'UserPoolId' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'Username' => 1,
                    'MFAOptions' => 1,
                    'UserPoolId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminSetUserSettings - Arguments for method AdminSetUserSettings on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminSetUserSettings on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminSetUserSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminSetUserSettings.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminSetUserSettingsResponse = $cognito -idp->AdminSetUserSettings(
      MFAOptions => [
        {
          AttributeName => 'MyAttributeNameType',    # min: 1, max: 32; OPTIONAL
          DeliveryMedium => 'SMS',    # values: SMS, EMAIL; OPTIONAL
        },
        ...
      ],
      UserPoolId => 'MyUserPoolIdType',
      Username   => 'MyUsernameType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/AdminSetUserSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MFAOptions => ArrayRef[CognitoIdp_MFAOptionType]

You can use this parameter only to set an SMS configuration that uses
SMS for delivery.



=head2 B<REQUIRED> Username => Str

The user name of the user that you are setting options for.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool that contains the user that you are setting
options for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminSetUserSettings in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

