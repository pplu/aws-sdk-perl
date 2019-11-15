
package Paws::CognitoIdp::ForgotPassword;
  use Moose;
  has AnalyticsMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::AnalyticsMetadataType');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::ClientMetadataType');
  has SecretHash => (is => 'ro', isa => 'Str');
  has UserContextData => (is => 'ro', isa => 'Paws::CognitoIdp::UserContextDataType');
  has Username => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ForgotPassword');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ForgotPasswordResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ForgotPassword - Arguments for method ForgotPassword on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ForgotPassword on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ForgotPassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ForgotPassword.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ForgotPasswordResponse = $cognito -idp->ForgotPassword(
      ClientId          => 'MyClientIdType',
      Username          => 'MyUsernameType',
      AnalyticsMetadata => {
        AnalyticsEndpointId => 'MyStringType',    # OPTIONAL
      },    # OPTIONAL
      ClientMetadata => {
        'MyStringType' => 'MyStringType',    # key: OPTIONAL, value: OPTIONAL
      },    # OPTIONAL
      SecretHash      => 'MySecretHashType',    # OPTIONAL
      UserContextData => {
        EncodedData => 'MyStringType',          # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $CodeDeliveryDetails = $ForgotPasswordResponse->CodeDeliveryDetails;

    # Returns a L<Paws::CognitoIdp::ForgotPasswordResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/ForgotPassword>

=head1 ATTRIBUTES


=head2 AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>

The Amazon Pinpoint analytics metadata for collecting metrics for
C<ForgotPassword> calls.



=head2 B<REQUIRED> ClientId => Str

The ID of the client associated with the user pool.



=head2 ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>

A map of custom key-value pairs that you can provide as input for any
custom workflows that this action triggers.

You create custom workflows by assigning AWS Lambda functions to user
pool triggers. When you use the ForgotPassword API action, Amazon
Cognito invokes any functions that are assigned to the following
triggers: I<pre sign-up>, I<custom message>, and I<user migration>.
When Amazon Cognito invokes any of these functions, it passes a JSON
payload, which the function receives as input. This payload contains a
C<clientMetadata> attribute, which provides the data that you assigned
to the ClientMetadata parameter in your ForgotPassword request. In your
function code in AWS Lambda, you can process the C<clientMetadata>
value to enhance your workflow for your specific needs.

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




=head2 SecretHash => Str

A keyed-hash message authentication code (HMAC) calculated using the
secret key of a user pool client and username plus the client ID in the
message.



=head2 UserContextData => L<Paws::CognitoIdp::UserContextDataType>

Contextual data such as the user's device fingerprint, IP address, or
location used for evaluating the risk of an unexpected event by Amazon
Cognito advanced security.



=head2 B<REQUIRED> Username => Str

The user name of the user for whom you want to enter a code to reset a
forgotten password.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ForgotPassword in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

