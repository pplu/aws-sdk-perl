
package Paws::CognitoIdp::InitiateAuth;
  use Moose;
  has AnalyticsMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::AnalyticsMetadataType');
  has AuthFlow => (is => 'ro', isa => 'Str', required => 1);
  has AuthParameters => (is => 'ro', isa => 'Paws::CognitoIdp::AuthParametersType');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::ClientMetadataType');
  has UserContextData => (is => 'ro', isa => 'Paws::CognitoIdp::UserContextDataType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InitiateAuth');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::InitiateAuthResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::InitiateAuth - Arguments for method InitiateAuth on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InitiateAuth on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method InitiateAuth.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InitiateAuth.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $InitiateAuthResponse = $cognito -idp->InitiateAuth(
      AuthFlow          => 'USER_SRP_AUTH',
      ClientId          => 'MyClientIdType',
      AnalyticsMetadata => {
        AnalyticsEndpointId => 'MyStringType',    # OPTIONAL
      },    # OPTIONAL
      AuthParameters => {
        'MyStringType' => 'MyStringType',    # key: OPTIONAL, value: OPTIONAL
      },    # OPTIONAL
      ClientMetadata => {
        'MyStringType' => 'MyStringType',    # key: OPTIONAL, value: OPTIONAL
      },    # OPTIONAL
      UserContextData => {
        EncodedData => 'MyStringType',    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AuthenticationResult = $InitiateAuthResponse->AuthenticationResult;
    my $ChallengeName        = $InitiateAuthResponse->ChallengeName;
    my $ChallengeParameters  = $InitiateAuthResponse->ChallengeParameters;
    my $Session              = $InitiateAuthResponse->Session;

    # Returns a L<Paws::CognitoIdp::InitiateAuthResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/InitiateAuth>

=head1 ATTRIBUTES


=head2 AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>

The Amazon Pinpoint analytics metadata for collecting metrics for
C<InitiateAuth> calls.



=head2 B<REQUIRED> AuthFlow => Str

The authentication flow for this call to execute. The API action will
depend on this value. For example:

=over

=item *

C<REFRESH_TOKEN_AUTH> will take in a valid refresh token and return new
tokens.

=item *

C<USER_SRP_AUTH> will take in C<USERNAME> and C<SRP_A> and return the
SRP variables to be used for next challenge execution.

=item *

C<USER_PASSWORD_AUTH> will take in C<USERNAME> and C<PASSWORD> and
return the next challenge or tokens.

=back

Valid values include:

=over

=item *

C<USER_SRP_AUTH>: Authentication flow for the Secure Remote Password
(SRP) protocol.

=item *

C<REFRESH_TOKEN_AUTH>/C<REFRESH_TOKEN>: Authentication flow for
refreshing the access token and ID token by supplying a valid refresh
token.

=item *

C<CUSTOM_AUTH>: Custom authentication flow.

=item *

C<USER_PASSWORD_AUTH>: Non-SRP authentication flow; USERNAME and
PASSWORD are passed directly. If a user migration Lambda trigger is
set, this flow will invoke the user migration Lambda if the USERNAME is
not found in the user pool.

=back

C<ADMIN_NO_SRP_AUTH> is not a valid value.

Valid values are: C<"USER_SRP_AUTH">, C<"REFRESH_TOKEN_AUTH">, C<"REFRESH_TOKEN">, C<"CUSTOM_AUTH">, C<"ADMIN_NO_SRP_AUTH">, C<"USER_PASSWORD_AUTH">

=head2 AuthParameters => L<Paws::CognitoIdp::AuthParametersType>

The authentication parameters. These are inputs corresponding to the
C<AuthFlow> that you are invoking. The required values depend on the
value of C<AuthFlow>:

=over

=item *

For C<USER_SRP_AUTH>: C<USERNAME> (required), C<SRP_A> (required),
C<SECRET_HASH> (required if the app client is configured with a client
secret), C<DEVICE_KEY>

=item *

For C<REFRESH_TOKEN_AUTH/REFRESH_TOKEN>: C<REFRESH_TOKEN> (required),
C<SECRET_HASH> (required if the app client is configured with a client
secret), C<DEVICE_KEY>

=item *

For C<CUSTOM_AUTH>: C<USERNAME> (required), C<SECRET_HASH> (if app
client is configured with client secret), C<DEVICE_KEY>

=back




=head2 B<REQUIRED> ClientId => Str

The app client ID.



=head2 ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>

This is a random key-value pair map which can contain any key and will
be passed to your PreAuthentication Lambda trigger as-is. It can be
used to implement additional validations around authentication.



=head2 UserContextData => L<Paws::CognitoIdp::UserContextDataType>

Contextual data such as the user's device fingerprint, IP address, or
location used for evaluating the risk of an unexpected event by Amazon
Cognito advanced security.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InitiateAuth in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

