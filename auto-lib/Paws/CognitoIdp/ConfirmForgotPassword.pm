
package Paws::CognitoIdp::ConfirmForgotPassword;
  use Moose;
  has AnalyticsMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::AnalyticsMetadataType');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::ClientMetadataType');
  has ConfirmationCode => (is => 'ro', isa => 'Str', required => 1);
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has SecretHash => (is => 'ro', isa => 'Str');
  has UserContextData => (is => 'ro', isa => 'Paws::CognitoIdp::UserContextDataType');
  has Username => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmForgotPassword');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ConfirmForgotPasswordResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ConfirmForgotPassword - Arguments for method ConfirmForgotPassword on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfirmForgotPassword on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ConfirmForgotPassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConfirmForgotPassword.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ConfirmForgotPasswordResponse = $cognito -idp->ConfirmForgotPassword(
      ClientId          => 'MyClientIdType',
      ConfirmationCode  => 'MyConfirmationCodeType',
      Password          => 'MyPasswordType',
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

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/ConfirmForgotPassword>

=head1 ATTRIBUTES


=head2 AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>

The Amazon Pinpoint analytics metadata for collecting metrics for
C<ConfirmForgotPassword> calls.



=head2 B<REQUIRED> ClientId => Str

The app client ID of the app associated with the user pool.



=head2 ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>

A map of custom key-value pairs that you can provide as input for any
custom workflows that this action triggers.

You create custom workflows by assigning AWS Lambda functions to user
pool triggers. When you use the ConfirmForgotPassword API action,
Amazon Cognito invokes the function that is assigned to the I<post
confirmation> trigger. When Amazon Cognito invokes this function, it
passes a JSON payload, which the function receives as input. This
payload contains a C<clientMetadata> attribute, which provides the data
that you assigned to the ClientMetadata parameter in your
ConfirmForgotPassword request. In your function code in AWS Lambda, you
can process the C<clientMetadata> value to enhance your workflow for
your specific needs.

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




=head2 B<REQUIRED> ConfirmationCode => Str

The confirmation code sent by a user's request to retrieve a forgotten
password. For more information, see



=head2 B<REQUIRED> Password => Str

The password sent by a user's request to retrieve a forgotten password.



=head2 SecretHash => Str

A keyed-hash message authentication code (HMAC) calculated using the
secret key of a user pool client and username plus the client ID in the
message.



=head2 UserContextData => L<Paws::CognitoIdp::UserContextDataType>

Contextual data such as the user's device fingerprint, IP address, or
location used for evaluating the risk of an unexpected event by Amazon
Cognito advanced security.



=head2 B<REQUIRED> Username => Str

The user name of the user for whom you want to enter a code to retrieve
a forgotten password.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConfirmForgotPassword in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

