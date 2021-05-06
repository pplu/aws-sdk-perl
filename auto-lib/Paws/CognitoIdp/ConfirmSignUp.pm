
package Paws::CognitoIdp::ConfirmSignUp;
  use Moose;
  has AnalyticsMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::AnalyticsMetadataType');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::ClientMetadataType');
  has ConfirmationCode => (is => 'ro', isa => 'Str', required => 1);
  has ForceAliasCreation => (is => 'ro', isa => 'Bool');
  has SecretHash => (is => 'ro', isa => 'Str');
  has UserContextData => (is => 'ro', isa => 'Paws::CognitoIdp::UserContextDataType');
  has Username => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmSignUp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ConfirmSignUpResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ConfirmSignUp - Arguments for method ConfirmSignUp on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfirmSignUp on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ConfirmSignUp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConfirmSignUp.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ConfirmSignUpResponse = $cognito -idp->ConfirmSignUp(
      ClientId          => 'MyClientIdType',
      ConfirmationCode  => 'MyConfirmationCodeType',
      Username          => 'MyUsernameType',
      AnalyticsMetadata => {
        AnalyticsEndpointId => 'MyStringType',    # OPTIONAL
      },    # OPTIONAL
      ClientMetadata => {
        'MyStringType' => 'MyStringType',    # key: OPTIONAL, value: OPTIONAL
      },    # OPTIONAL
      ForceAliasCreation => 1,                     # OPTIONAL
      SecretHash         => 'MySecretHashType',    # OPTIONAL
      UserContextData    => {
        EncodedData => 'MyStringType',             # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/ConfirmSignUp>

=head1 ATTRIBUTES


=head2 AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>

The Amazon Pinpoint analytics metadata for collecting metrics for
C<ConfirmSignUp> calls.



=head2 B<REQUIRED> ClientId => Str

The ID of the app client associated with the user pool.



=head2 ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>

A map of custom key-value pairs that you can provide as input for any
custom workflows that this action triggers.

You create custom workflows by assigning AWS Lambda functions to user
pool triggers. When you use the ConfirmSignUp API action, Amazon
Cognito invokes the function that is assigned to the I<post
confirmation> trigger. When Amazon Cognito invokes this function, it
passes a JSON payload, which the function receives as input. This
payload contains a C<clientMetadata> attribute, which provides the data
that you assigned to the ClientMetadata parameter in your ConfirmSignUp
request. In your function code in AWS Lambda, you can process the
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




=head2 B<REQUIRED> ConfirmationCode => Str

The confirmation code sent by a user's request to confirm registration.



=head2 ForceAliasCreation => Bool

Boolean to be specified to force user confirmation irrespective of
existing alias. By default set to C<False>. If this parameter is set to
C<True> and the phone number/email used for sign up confirmation
already exists as an alias with a different user, the API call will
migrate the alias from the previous user to the newly created user
being confirmed. If set to C<False>, the API will throw an
B<AliasExistsException> error.



=head2 SecretHash => Str

A keyed-hash message authentication code (HMAC) calculated using the
secret key of a user pool client and username plus the client ID in the
message.



=head2 UserContextData => L<Paws::CognitoIdp::UserContextDataType>

Contextual data such as the user's device fingerprint, IP address, or
location used for evaluating the risk of an unexpected event by Amazon
Cognito advanced security.



=head2 B<REQUIRED> Username => Str

The user name of the user whose registration you wish to confirm.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConfirmSignUp in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

