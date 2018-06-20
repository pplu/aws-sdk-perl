
package Paws::CognitoIdp::RespondToAuthChallenge;
  use Moose;
  has AnalyticsMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::AnalyticsMetadataType');
  has ChallengeName => (is => 'ro', isa => 'Str', required => 1);
  has ChallengeResponses => (is => 'ro', isa => 'Paws::CognitoIdp::ChallengeResponsesType');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
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

The challenge name. For more information, see .

C<ADMIN_NO_SRP_AUTH> is not a valid value.

Valid values are: C<"SMS_MFA">, C<"SOFTWARE_TOKEN_MFA">, C<"SELECT_MFA_TYPE">, C<"MFA_SETUP">, C<"PASSWORD_VERIFIER">, C<"CUSTOM_CHALLENGE">, C<"DEVICE_SRP_AUTH">, C<"DEVICE_PASSWORD_VERIFIER">, C<"ADMIN_NO_SRP_AUTH">, C<"NEW_PASSWORD_REQUIRED">

=head2 ChallengeResponses => L<Paws::CognitoIdp::ChallengeResponsesType>

The challenge responses. These are inputs corresponding to the value of
C<ChallengeName>, for example:

=over

=item *

C<SMS_MFA>: C<SMS_MFA_CODE>, C<USERNAME>, C<SECRET_HASH> (if app client
is configured with client secret).

=item *

C<PASSWORD_VERIFIER>: C<PASSWORD_CLAIM_SIGNATURE>,
C<PASSWORD_CLAIM_SECRET_BLOCK>, C<TIMESTAMP>, C<USERNAME>,
C<SECRET_HASH> (if app client is configured with client secret).

=item *

C<NEW_PASSWORD_REQUIRED>: C<NEW_PASSWORD>, any other required
attributes, C<USERNAME>, C<SECRET_HASH> (if app client is configured
with client secret).

=back




=head2 B<REQUIRED> ClientId => Str

The app client ID.



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

