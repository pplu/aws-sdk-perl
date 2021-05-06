
package Paws::CognitoIdp::UpdateUserAttributes;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', required => 1);
  has ClientMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::ClientMetadataType');
  has UserAttributes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::AttributeType]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUserAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::UpdateUserAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateUserAttributes - Arguments for method UpdateUserAttributes on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUserAttributes on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method UpdateUserAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUserAttributes.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $UpdateUserAttributesResponse = $cognito -idp->UpdateUserAttributes(
      AccessToken    => 'MyTokenModelType',
      UserAttributes => [
        {
          Name  => 'MyAttributeNameType',     # min: 1, max: 32
          Value => 'MyAttributeValueType',    # max: 2048; OPTIONAL
        },
        ...
      ],
      ClientMetadata => { 'MyStringType' => 'MyStringType', },    # OPTIONAL
    );

    # Results:
    my $CodeDeliveryDetailsList =
      $UpdateUserAttributesResponse->CodeDeliveryDetailsList;

    # Returns a L<Paws::CognitoIdp::UpdateUserAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/UpdateUserAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

The access token for the request to update user attributes.



=head2 ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>

A map of custom key-value pairs that you can provide as input for any
custom workflows that this action triggers.

You create custom workflows by assigning AWS Lambda functions to user
pool triggers. When you use the UpdateUserAttributes API action, Amazon
Cognito invokes the function that is assigned to the I<custom message>
trigger. When Amazon Cognito invokes this function, it passes a JSON
payload, which the function receives as input. This payload contains a
C<clientMetadata> attribute, which provides the data that you assigned
to the ClientMetadata parameter in your UpdateUserAttributes request.
In your function code in AWS Lambda, you can process the
C<clientMetadata> value to enhance your workflow for your specific
needs.

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




=head2 B<REQUIRED> UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]

An array of name-value pairs representing user attributes.

For custom attributes, you must prepend the C<custom:> prefix to the
attribute name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUserAttributes in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

