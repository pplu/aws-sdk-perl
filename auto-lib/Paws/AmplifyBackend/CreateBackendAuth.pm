
package Paws::AmplifyBackend::CreateBackendAuth;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'backendEnvironmentName', required => 1);
  has ResourceConfig => (is => 'ro', isa => 'Paws::AmplifyBackend::CreateBackendAuthResourceConfig', traits => ['NameInRequest'], request_name => 'resourceConfig', required => 1);
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBackendAuth');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backend/{appId}/auth');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyBackend::CreateBackendAuthResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::CreateBackendAuth - Arguments for method CreateBackendAuth on L<Paws::AmplifyBackend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBackendAuth on the
L<AmplifyBackend|Paws::AmplifyBackend> service. Use the attributes of this class
as arguments to method CreateBackendAuth.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBackendAuth.

=head1 SYNOPSIS

    my $amplifybackend = Paws->service('AmplifyBackend');
    my $CreateBackendAuthResponse = $amplifybackend->CreateBackendAuth(
      AppId                  => 'My__string',
      BackendEnvironmentName => 'My__string',
      ResourceConfig         => {
        AuthResources => 'USER_POOL_ONLY'
        ,    # values: USER_POOL_ONLY, IDENTITY_POOL_AND_USER_POOL
        Service         => 'COGNITO',    # values: COGNITO
        UserPoolConfigs => {
          RequiredSignUpAttributes => [
            'ADDRESS',
            ... # values: ADDRESS, BIRTHDATE, EMAIL, FAMILY_NAME, GENDER, GIVEN_NAME, LOCALE, MIDDLE_NAME, NAME, NICKNAME, PHONE_NUMBER, PICTURE, PREFERRED_USERNAME, PROFILE, UPDATED_AT, WEBSITE, ZONE_INFO
          ],
          SignInMethod => 'EMAIL'
          ,     # values: EMAIL, EMAIL_AND_PHONE_NUMBER, PHONE_NUMBER, USERNAME
          UserPoolName   => 'My__string',
          ForgotPassword => {
            DeliveryMethod => 'EMAIL',    # values: EMAIL, SMS
            EmailSettings  => {
              EmailMessage => 'My__string',
              EmailSubject => 'My__string',
            },                            # OPTIONAL
            SmsSettings => { SmsMessage => 'My__string', },    # OPTIONAL
          },    # OPTIONAL
          Mfa => {
            MFAMode  => 'ON',    # values: ON, OFF, OPTIONAL
            Settings => {
              MfaTypes => [
                'SMS', ...       # values: SMS, TOTP
              ],                 # OPTIONAL
              SmsMessage => 'My__string',
            },    # OPTIONAL
          },    # OPTIONAL
          OAuth => {
            OAuthGrantType => 'CODE',    # values: CODE, IMPLICIT
            OAuthScopes    => [
              'PHONE',
              ... # values: PHONE, EMAIL, OPENID, PROFILE, AWS_COGNITO_SIGNIN_USER_ADMIN
            ],
            RedirectSignInURIs     => [ 'My__string', ... ],
            RedirectSignOutURIs    => [ 'My__string', ... ],
            DomainPrefix           => 'My__string',
            SocialProviderSettings => {
              Facebook => {
                ClientId     => 'My__string',
                ClientSecret => 'My__string',
              },    # OPTIONAL
              Google => {
                ClientId     => 'My__string',
                ClientSecret => 'My__string',
              },    # OPTIONAL
              LoginWithAmazon => {
                ClientId     => 'My__string',
                ClientSecret => 'My__string',
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          PasswordPolicy => {
            MinimumLength         => 1,
            AdditionalConstraints => [
              'REQUIRE_DIGIT',
              ... # values: REQUIRE_DIGIT, REQUIRE_LOWERCASE, REQUIRE_SYMBOL, REQUIRE_UPPERCASE
            ],    # OPTIONAL
          },    # OPTIONAL
        },
        IdentityPoolConfigs => {
          IdentityPoolName     => 'My__string',
          UnauthenticatedLogin => 1,

        },    # OPTIONAL
      },
      ResourceName => 'My__string',

    );

    # Results:
    my $AppId = $CreateBackendAuthResponse->AppId;
    my $BackendEnvironmentName =
      $CreateBackendAuthResponse->BackendEnvironmentName;
    my $Error     = $CreateBackendAuthResponse->Error;
    my $JobId     = $CreateBackendAuthResponse->JobId;
    my $Operation = $CreateBackendAuthResponse->Operation;
    my $Status    = $CreateBackendAuthResponse->Status;

    # Returns a L<Paws::AmplifyBackend::CreateBackendAuthResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend/CreateBackendAuth>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.



=head2 B<REQUIRED> BackendEnvironmentName => Str

The name of the backend environment.



=head2 B<REQUIRED> ResourceConfig => L<Paws::AmplifyBackend::CreateBackendAuthResourceConfig>

The resource configuration for this request object.



=head2 B<REQUIRED> ResourceName => Str

The name of this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBackendAuth in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

