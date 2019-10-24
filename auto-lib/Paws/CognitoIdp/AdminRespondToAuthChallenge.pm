# Generated from json/callargs_class.tt

package Paws::CognitoIdp::AdminRespondToAuthChallenge;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_ContextDataType CognitoIdp_AnalyticsMetadataType CognitoIdp_ChallengeResponsesType/;
  has AnalyticsMetadata => (is => 'ro', isa => CognitoIdp_AnalyticsMetadataType, predicate => 1);
  has ChallengeName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ChallengeResponses => (is => 'ro', isa => CognitoIdp_ChallengeResponsesType, predicate => 1);
  has ClientId => (is => 'ro', isa => Str, required => 1, predicate => 1);
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
               'UserPoolId' => {
                                 'type' => 'Str'
                               },
               'ContextData' => {
                                  'class' => 'Paws::CognitoIdp::ContextDataType',
                                  'type' => 'CognitoIdp_ContextDataType'
                                },
               'ClientId' => {
                               'type' => 'Str'
                             },
               'Session' => {
                              'type' => 'Str'
                            },
               'AnalyticsMetadata' => {
                                        'class' => 'Paws::CognitoIdp::AnalyticsMetadataType',
                                        'type' => 'CognitoIdp_AnalyticsMetadataType'
                                      },
               'ChallengeResponses' => {
                                         'class' => 'Paws::CognitoIdp::ChallengeResponsesType',
                                         'type' => 'CognitoIdp_ChallengeResponsesType'
                                       },
               'ChallengeName' => {
                                    'type' => 'Str'
                                  }
             },
  'IsRequired' => {
                    'UserPoolId' => 1,
                    'ClientId' => 1,
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

