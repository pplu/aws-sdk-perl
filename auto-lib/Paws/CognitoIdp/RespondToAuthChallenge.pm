
package Paws::CognitoIdp::RespondToAuthChallenge;
  use Moose;
  has AnalyticsMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::AnalyticsMetadataType');
  has ChallengeName => (is => 'ro', isa => 'Str', required => 1);
  has ChallengeResponses => (is => 'ro', isa => 'Paws::CognitoIdp::ChallengeResponsesType');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::ClientMetadataType');
  has Session => (is => 'ro', isa => 'Str');
  has UserContextData => (is => 'ro', isa => 'Paws::CognitoIdp::UserContextDataType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RespondToAuthChallenge');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::RespondToAuthChallengeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::RespondToAuthChallenge - Arguments for method RespondToAuthChallenge on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RespondToAuthChallenge on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method RespondToAuthChallenge.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RespondToAuthChallenge.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $RespondToAuthChallengeResponse = $cognito -idp->RespondToAuthChallenge(
      ChallengeName     => 'SMS_MFA',
      ClientId          => 'MyClientIdType',
      AnalyticsMetadata => {
        AnalyticsEndpointId => 'MyStringType',    # OPTIONAL
      },    # OPTIONAL
      ChallengeResponses => {
        'MyStringType' => 'MyStringType',    # key: OPTIONAL, value: OPTIONAL
      },    # OPTIONAL
      ClientMetadata => {
        'MyStringType' => 'MyStringType',    # key: OPTIONAL, value: OPTIONAL
      },    # OPTIONAL
      Session         => 'MySessionType',    # OPTIONAL
      UserContextData => {
        EncodedData => 'MyStringType',       # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AuthenticationResult =
      $RespondToAuthChallengeResponse->AuthenticationResult;
    my $ChallengeName = $RespondToAuthChallengeResponse->ChallengeName;
    my $ChallengeParameters =
      $RespondToAuthChallengeResponse->ChallengeParameters;
    my $Session = $RespondToAuthChallengeResponse->Session;

    # Returns a L<Paws::CognitoIdp::RespondToAuthChallengeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/RespondToAuthChallenge>

=head1 ATTRIBUTES


=head2 AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>

The Amazon Pinpoint analytics metadata for collecting metrics for
C<RespondToAuthChallenge> calls.



=head2 B<REQUIRED> ChallengeName => Str

The challenge name. For more information, see InitiateAuth
(https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html).

C<ADMIN_NO_SRP_AUTH> is not a valid value.

Valid values are: C<"SMS_MFA">, C<"SOFTWARE_TOKEN_MFA">, C<"SELECT_MFA_TYPE">, C<"MFA_SETUP">, C<"PASSWORD_VERIFIER">, C<"CUSTOM_CHALLENGE">, C<"DEVICE_SRP_AUTH">, C<"DEVICE_PASSWORD_VERIFIER">, C<"ADMIN_NO_SRP_AUTH">, C<"NEW_PASSWORD_REQUIRED">

=head2 ChallengeResponses => L<Paws::CognitoIdp::ChallengeResponsesType>

The challenge responses. These are inputs corresponding to the value of
C<ChallengeName>, for example:

C<SECRET_HASH> (if app client is configured with client secret) applies
to all inputs below (including C<SOFTWARE_TOKEN_MFA>).

=over

=item *

C<SMS_MFA>: C<SMS_MFA_CODE>, C<USERNAME>.

=item *

C<PASSWORD_VERIFIER>: C<PASSWORD_CLAIM_SIGNATURE>,
C<PASSWORD_CLAIM_SECRET_BLOCK>, C<TIMESTAMP>, C<USERNAME>.

=item *

C<NEW_PASSWORD_REQUIRED>: C<NEW_PASSWORD>, any other required
attributes, C<USERNAME>.

=item *

C<SOFTWARE_TOKEN_MFA>: C<USERNAME> and C<SOFTWARE_TOKEN_MFA_CODE> are
required attributes.

=item *

C<DEVICE_SRP_AUTH> requires C<USERNAME>, C<DEVICE_KEY>, C<SRP_A> (and
C<SECRET_HASH>).

=item *

C<DEVICE_PASSWORD_VERIFIER> requires everything that
C<PASSWORD_VERIFIER> requires plus C<DEVICE_KEY>.

=item *

C<MFA_SETUP> requires C<USERNAME>, plus you need to use the session
value returned by C<VerifySoftwareToken> in the C<Session> parameter.

=back




=head2 B<REQUIRED> ClientId => Str

The app client ID.



=head2 ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>

A map of custom key-value pairs that you can provide as input for any
custom workflows that this action triggers.

You create custom workflows by assigning AWS Lambda functions to user
pool triggers. When you use the RespondToAuthChallenge API action,
Amazon Cognito invokes any functions that are assigned to the following
triggers: I<post authentication>, I<pre token generation>, I<define
auth challenge>, I<create auth challenge>, and I<verify auth
challenge>. When Amazon Cognito invokes any of these functions, it
passes a JSON payload, which the function receives as input. This
payload contains a C<clientMetadata> attribute, which provides the data
that you assigned to the ClientMetadata parameter in your
RespondToAuthChallenge request. In your function code in AWS Lambda,
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




=head2 Session => Str

The session which should be passed both ways in challenge-response
calls to the service. If C<InitiateAuth> or C<RespondToAuthChallenge>
API call determines that the caller needs to go through another
challenge, they return a session with other challenge parameters. This
session should be passed as it is to the next C<RespondToAuthChallenge>
API call.



=head2 UserContextData => L<Paws::CognitoIdp::UserContextDataType>

Contextual data such as the user's device fingerprint, IP address, or
location used for evaluating the risk of an unexpected event by Amazon
Cognito advanced security.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RespondToAuthChallenge in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

