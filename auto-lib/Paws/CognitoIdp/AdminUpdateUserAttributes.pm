# Generated from json/callargs_class.tt

package Paws::CognitoIdp::AdminUpdateUserAttributes;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_ClientMetadataType CognitoIdp_AttributeType/;
  has ClientMetadata => (is => 'ro', isa => CognitoIdp_ClientMetadataType, predicate => 1);
  has UserAttributes => (is => 'ro', isa => ArrayRef[CognitoIdp_AttributeType], required => 1, predicate => 1);
  has Username => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UserPoolId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AdminUpdateUserAttributes');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoIdp::AdminUpdateUserAttributesResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Username' => {
                               'type' => 'Str'
                             },
               'UserAttributes' => {
                                     'class' => 'Paws::CognitoIdp::AttributeType',
                                     'type' => 'ArrayRef[CognitoIdp_AttributeType]'
                                   },
               'ClientMetadata' => {
                                     'type' => 'CognitoIdp_ClientMetadataType',
                                     'class' => 'Paws::CognitoIdp::ClientMetadataType'
                                   },
               'UserPoolId' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'UserPoolId' => 1,
                    'UserAttributes' => 1,
                    'Username' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminUpdateUserAttributes - Arguments for method AdminUpdateUserAttributes on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminUpdateUserAttributes on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminUpdateUserAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminUpdateUserAttributes.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminUpdateUserAttributesResponse =
      $cognito -idp->AdminUpdateUserAttributes(
      UserAttributes => [
        {
          Name  => 'MyAttributeNameType',     # min: 1, max: 32
          Value => 'MyAttributeValueType',    # max: 2048; OPTIONAL
        },
        ...
      ],
      UserPoolId     => 'MyUserPoolIdType',
      Username       => 'MyUsernameType',
      ClientMetadata => { 'MyStringType' => 'MyStringType', },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/AdminUpdateUserAttributes>

=head1 ATTRIBUTES


=head2 ClientMetadata => CognitoIdp_ClientMetadataType

A map of custom key-value pairs that you can provide as input for any
custom workflows that this action triggers.

You create custom workflows by assigning AWS Lambda functions to user
pool triggers. When you use the AdminUpdateUserAttributes API action,
Amazon Cognito invokes the function that is assigned to the I<custom
message> trigger. When Amazon Cognito invokes this function, it passes
a JSON payload, which the function receives as input. This payload
contains a C<clientMetadata> attribute, which provides the data that
you assigned to the ClientMetadata parameter in your
AdminUpdateUserAttributes request. In your function code in AWS Lambda,
you can process the C<clientMetadata> value to enhance your workflow
for your specific needs.

For more information, see Customizing User Pool Workflows with Lambda
Triggers
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html)
in the I<Amazon Cognito Developer Guide>.

Take the following limitations into consideration when you use the
ClientMetadata parameter:

=over

=item *

Amazon Cognito does not store the ClientMetadata value. This data is
available only to AWS Lambda triggers that are assigned to a user pool
to support custom workflows. If your user pool configuration does not
include triggers, the ClientMetadata parameter serves no purpose.

=item *

Amazon Cognito does not validate the ClientMetadata value.

=item *

Amazon Cognito does not encrypt the the ClientMetadata value, so don't
use it to provide sensitive information.

=back




=head2 B<REQUIRED> UserAttributes => ArrayRef[CognitoIdp_AttributeType]

An array of name-value pairs representing user attributes.

For custom attributes, you must prepend the C<custom:> prefix to the
attribute name.



=head2 B<REQUIRED> Username => Str

The user name of the user for whom you want to update user attributes.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool where you want to update user
attributes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminUpdateUserAttributes in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

