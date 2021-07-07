
package Paws::AmplifyBackend::UpdateBackendAuth;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backendEnvironmentName', required => 1);
  has ResourceConfig => (is => 'ro', isa => 'Paws::AmplifyBackend::UpdateBackendAuthResourceConfig', traits => ['NameInRequest'], request_name => 'resourceConfig', required => 1);
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBackendAuth');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backend/{appId}/auth/{backendEnvironmentName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyBackend::UpdateBackendAuthResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::UpdateBackendAuth - Arguments for method UpdateBackendAuth on L<Paws::AmplifyBackend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBackendAuth on the
L<AmplifyBackend|Paws::AmplifyBackend> service. Use the attributes of this class
as arguments to method UpdateBackendAuth.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBackendAuth.

=head1 SYNOPSIS

    my $amplifybackend = Paws->service('AmplifyBackend');
    my $UpdateBackendAuthResponse = $amplifybackend->UpdateBackendAuth(
      AppId                  => 'My__string',
      BackendEnvironmentName => 'My__string',
      ResourceConfig         => {
        AuthResources => 'USER_POOL_ONLY'
        ,    # values: USER_POOL_ONLY, IDENTITY_POOL_AND_USER_POOL
        Service         => 'COGNITO',    # values: COGNITO
        UserPoolConfigs => {
          ForgotPassword => {
            DeliveryMethod => 'EMAIL',    # values: EMAIL, SMS; OPTIONAL
            EmailSettings  => {
              EmailMessage => 'My__string',
              EmailSubject => 'My__string',
            },                            # OPTIONAL
            SmsSettings => { SmsMessage => 'My__string', },    # OPTIONAL
          },    # OPTIONAL
          Mfa => {
            MFAMode  => 'ON',    # values: ON, OFF, OPTIONAL; OPTIONAL
            Settings => {
              MfaTypes => [
                'SMS', ...       # values: SMS, TOTP
              ],    # OPTIONAL
              SmsMessage => 'My__string',
            },    # OPTIONAL
          },    # OPTIONAL
          OAuth => {
            DomainPrefix   => 'My__string',
            OAuthGrantType => 'CODE',         # values: CODE, IMPLICIT; OPTIONAL
            OAuthScopes    => [
              'PHONE',
              ... # values: PHONE, EMAIL, OPENID, PROFILE, AWS_COGNITO_SIGNIN_USER_ADMIN
            ],    # OPTIONAL
            RedirectSignInURIs     => [ 'My__string', ... ],    # OPTIONAL
            RedirectSignOutURIs    => [ 'My__string', ... ],    # OPTIONAL
            SocialProviderSettings => {
              Facebook => {
                ClientId     => 'My__string',
                ClientSecret => 'My__string',
              },                                                # OPTIONAL
              Google => {
                ClientId     => 'My__string',
                ClientSecret => 'My__string',
              },                                                # OPTIONAL
              LoginWithAmazon => {
                ClientId     => 'My__string',
                ClientSecret => 'My__string',
              },                                                # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          PasswordPolicy => {
            AdditionalConstraints => [
              'REQUIRE_DIGIT',
              ... # values: REQUIRE_DIGIT, REQUIRE_LOWERCASE, REQUIRE_SYMBOL, REQUIRE_UPPERCASE
            ],    # OPTIONAL
            MinimumLength => 1,    # OPTIONAL
          },    # OPTIONAL
        },
        IdentityPoolConfigs => {
          UnauthenticatedLogin => 1,    # OPTIONAL
        },    # OPTIONAL
      },
      ResourceName => 'My__string',

    );

    # Results:
    my $AppId = $UpdateBackendAuthResponse->AppId;
    my $BackendEnvironmentName =
      $UpdateBackendAuthResponse->BackendEnvironmentName;
    my $Error     = $UpdateBackendAuthResponse->Error;
    my $JobId     = $UpdateBackendAuthResponse->JobId;
    my $Operation = $UpdateBackendAuthResponse->Operation;
    my $Status    = $UpdateBackendAuthResponse->Status;

    # Returns a L<Paws::AmplifyBackend::UpdateBackendAuthResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend/UpdateBackendAuth>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.



=head2 B<REQUIRED> BackendEnvironmentName => Str

The name of the backend environment.



=head2 B<REQUIRED> ResourceConfig => L<Paws::AmplifyBackend::UpdateBackendAuthResourceConfig>

The resource configuration for this request object.



=head2 B<REQUIRED> ResourceName => Str

The name of this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBackendAuth in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

