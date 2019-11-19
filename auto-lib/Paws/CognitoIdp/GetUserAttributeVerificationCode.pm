# Generated from json/callargs_class.tt

package Paws::CognitoIdp::GetUserAttributeVerificationCode;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_ClientMetadataType/;
  has AccessToken => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has AttributeName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ClientMetadata => (is => 'ro', isa => CognitoIdp_ClientMetadataType, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetUserAttributeVerificationCode');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoIdp::GetUserAttributeVerificationCodeResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'AttributeName' => 1,
                    'AccessToken' => 1
                  },
  'types' => {
               'AttributeName' => {
                                    'type' => 'Str'
                                  },
               'ClientMetadata' => {
                                     'class' => 'Paws::CognitoIdp::ClientMetadataType',
                                     'type' => 'CognitoIdp_ClientMetadataType'
                                   },
               'AccessToken' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetUserAttributeVerificationCode - Arguments for method GetUserAttributeVerificationCode on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUserAttributeVerificationCode on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method GetUserAttributeVerificationCode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUserAttributeVerificationCode.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $GetUserAttributeVerificationCodeResponse =
      $cognito -idp->GetUserAttributeVerificationCode(
      AccessToken    => 'MyTokenModelType',
      AttributeName  => 'MyAttributeNameType',
      ClientMetadata => { 'MyStringType' => 'MyStringType', },    # OPTIONAL
      );

    # Results:
    my $CodeDeliveryDetails =
      $GetUserAttributeVerificationCodeResponse->CodeDeliveryDetails;

# Returns a L<Paws::CognitoIdp::GetUserAttributeVerificationCodeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/GetUserAttributeVerificationCode>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

The access token returned by the server response to get the user
attribute verification code.



=head2 B<REQUIRED> AttributeName => Str

The attribute name returned by the server response to get the user
attribute verification code.



=head2 ClientMetadata => CognitoIdp_ClientMetadataType

A map of custom key-value pairs that you can provide as input for any
custom workflows that this action triggers.

You create custom workflows by assigning AWS Lambda functions to user
pool triggers. When you use the GetUserAttributeVerificationCode API
action, Amazon Cognito invokes the function that is assigned to the
I<custom message> trigger. When Amazon Cognito invokes this function,
it passes a JSON payload, which the function receives as input. This
payload contains a C<clientMetadata> attribute, which provides the data
that you assigned to the ClientMetadata parameter in your
GetUserAttributeVerificationCode request. In your function code in AWS
Lambda, you can process the C<clientMetadata> value to enhance your
workflow for your specific needs.

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





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUserAttributeVerificationCode in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

