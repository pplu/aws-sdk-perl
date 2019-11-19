# Generated from json/callargs_class.tt

package Paws::CognitoIdp::AdminRespondToAuthChallenge;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_ChallengeResponsesType CognitoIdp_ContextDataType CognitoIdp_ClientMetadataType CognitoIdp_AnalyticsMetadataType/;
  has AnalyticsMetadata => (is => 'ro', isa => CognitoIdp_AnalyticsMetadataType, predicate => 1);
  has ChallengeName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ChallengeResponses => (is => 'ro', isa => CognitoIdp_ChallengeResponsesType, predicate => 1);
  has ClientId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ClientMetadata => (is => 'ro', isa => CognitoIdp_ClientMetadataType, predicate => 1);
  has ContextData => (is => 'ro', isa => CognitoIdp_ContextDataType, predicate => 1);
  has Session => (is => 'ro', isa => Str, predicate => 1);
  has UserPoolId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AdminRespondToAuthChallenge');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoIdp::AdminRespondToAuthChallengeResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ChallengeName' => {
                                    'type' => 'Str'
                                  },
               'ChallengeResponses' => {
                                         'class' => 'Paws::CognitoIdp::ChallengeResponsesType',
                                         'type' => 'CognitoIdp_ChallengeResponsesType'
                                       },
               'ContextData' => {
                                  'class' => 'Paws::CognitoIdp::ContextDataType',
                                  'type' => 'CognitoIdp_ContextDataType'
                                },
               'ClientId' => {
                               'type' => 'Str'
                             },
               'UserPoolId' => {
                                 'type' => 'Str'
                               },
               'ClientMetadata' => {
                                     'type' => 'CognitoIdp_ClientMetadataType',
                                     'class' => 'Paws::CognitoIdp::ClientMetadataType'
                                   },
               'Session' => {
                              'type' => 'Str'
                            },
               'AnalyticsMetadata' => {
                                        'type' => 'CognitoIdp_AnalyticsMetadataType',
                                        'class' => 'Paws::CognitoIdp::AnalyticsMetadataType'
                                      }
             },
  'IsRequired' => {
                    'ClientId' => 1,
                    'UserPoolId' => 1,
                    'ChallengeName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminRespondToAuthChallenge - Arguments for method AdminRespondToAuthChallenge on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminRespondToAuthChallenge on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminRespondToAuthChallenge.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminRespondToAuthChallenge.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminRespondToAuthChallengeResponse =
      $cognito -idp->AdminRespondToAuthChallenge(
      ChallengeName     => 'SMS_MFA',
      ClientId          => 'MyClientIdType',
      UserPoolId        => 'MyUserPoolIdType',
      AnalyticsMetadata => {
        AnalyticsEndpointId => 'MyStringType',    # OPTIONAL
      },    # OPTIONAL
      ChallengeResponses => {
        'MyStringType' => 'MyStringType',    # key: OPTIONAL, value: OPTIONAL
      },    # OPTIONAL
      ClientMetadata => {
        'MyStringType' => 'MyStringType',    # key: OPTIONAL, value: OPTIONAL
      },    # OPTIONAL
      ContextData => {
        HttpHeaders => [
          {
            HeaderName  => 'MyStringType',    # OPTIONAL
            HeaderValue => 'MyStringType',    # OPTIONAL
          },
          ...
        ],
        IpAddress   => 'MyStringType',        # OPTIONAL
        ServerName  => 'MyStringType',        # OPTIONAL
        ServerPath  => 'MyStringType',        # OPTIONAL
        EncodedData => 'MyStringType',        # OPTIONAL
      },    # OPTIONAL
      Session => 'MySessionType',    # OPTIONAL
      );

    # Results:
    my $AuthenticationResult =
      $AdminRespondToAuthChallengeResponse->AuthenticationResult;
    my $ChallengeName = $AdminRespondToAuthChallengeResponse->ChallengeName;
    my $ChallengeParameters =
      $AdminRespondToAuthChallengeResponse->ChallengeParameters;
    my $Session = $AdminRespondToAuthChallengeResponse->Session;

    # Returns a L<Paws::CognitoIdp::AdminRespondToAuthChallengeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/AdminRespondToAuthChallenge>

=head1 ATTRIBUTES


=head2 AnalyticsMetadata => CognitoIdp_AnalyticsMetadataType

The analytics metadata for collecting Amazon Pinpoint metrics for
C<AdminRespondToAuthChallenge> calls.



=head2 B<REQUIRED> ChallengeName => Str

The challenge name. For more information, see .

Valid values are: C<"SMS_MFA">, C<"SOFTWARE_TOKEN_MFA">, C<"SELECT_MFA_TYPE">, C<"MFA_SETUP">, C<"PASSWORD_VERIFIER">, C<"CUSTOM_CHALLENGE">, C<"DEVICE_SRP_AUTH">, C<"DEVICE_PASSWORD_VERIFIER">, C<"ADMIN_NO_SRP_AUTH">, C<"NEW_PASSWORD_REQUIRED">

=head2 ChallengeResponses => CognitoIdp_ChallengeResponsesType

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

C<ADMIN_NO_SRP_AUTH>: C<PASSWORD>, C<USERNAME>, C<SECRET_HASH> (if app
client is configured with client secret).

=item *

C<NEW_PASSWORD_REQUIRED>: C<NEW_PASSWORD>, any other required
attributes, C<USERNAME>, C<SECRET_HASH> (if app client is configured
with client secret).

=back

The value of the C<USERNAME> attribute must be the user's actual
username, not an alias (such as email address or phone number). To make
this easier, the C<AdminInitiateAuth> response includes the actual
username value in the C<USERNAMEUSER_ID_FOR_SRP> attribute, even if you
specified an alias in your call to C<AdminInitiateAuth>.



=head2 B<REQUIRED> ClientId => Str

The app client ID.



=head2 ClientMetadata => CognitoIdp_ClientMetadataType

A map of custom key-value pairs that you can provide as input for any
custom workflows that this action triggers.

You create custom workflows by assigning AWS Lambda functions to user
pool triggers. When you use the AdminRespondToAuthChallenge API action,
Amazon Cognito invokes any functions that are assigned to the following
triggers: I<pre sign-up>, I<custom message>, I<post authentication>,
I<user migration>, I<pre token generation>, I<define auth challenge>,
I<create auth challenge>, and I<verify auth challenge response>. When
Amazon Cognito invokes any of these functions, it passes a JSON
payload, which the function receives as input. This payload contains a
C<clientMetadata> attribute, which provides the data that you assigned
to the ClientMetadata parameter in your AdminRespondToAuthChallenge
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




=head2 ContextData => CognitoIdp_ContextDataType

Contextual data such as the user's device fingerprint, IP address, or
location used for evaluating the risk of an unexpected event by Amazon
Cognito advanced security.



=head2 Session => Str

The session which should be passed both ways in challenge-response
calls to the service. If C<InitiateAuth> or C<RespondToAuthChallenge>
API call determines that the caller needs to go through another
challenge, they return a session with other challenge parameters. This
session should be passed as it is to the next C<RespondToAuthChallenge>
API call.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the Amazon Cognito user pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminRespondToAuthChallenge in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

