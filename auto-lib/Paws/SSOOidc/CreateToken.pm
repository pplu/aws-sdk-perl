
package Paws::SSOOidc::CreateToken;
  use Moose;
  has ClientId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientId', required => 1);
  has ClientSecret => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientSecret', required => 1);
  has Code => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'code');
  has DeviceCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceCode', required => 1);
  has GrantType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'grantType', required => 1);
  has RedirectUri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'redirectUri');
  has RefreshToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'refreshToken');
  has Scope => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'scope');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateToken');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/token');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOOidc::CreateTokenResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOOidc::CreateToken - Arguments for method CreateToken on L<Paws::SSOOidc>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateToken on the
L<AWS SSO OIDC|Paws::SSOOidc> service. Use the attributes of this class
as arguments to method CreateToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateToken.

=head1 SYNOPSIS

    my $oidc = Paws->service('SSOOidc');
    my $CreateTokenResponse = $oidc->CreateToken(
      ClientId     => 'MyClientId',
      ClientSecret => 'MyClientSecret',
      DeviceCode   => 'MyDeviceCode',
      GrantType    => 'MyGrantType',
      Code         => 'MyAuthCode',          # OPTIONAL
      RedirectUri  => 'MyURI',               # OPTIONAL
      RefreshToken => 'MyRefreshToken',      # OPTIONAL
      Scope        => [ 'MyScope', ... ],    # OPTIONAL
    );

    # Results:
    my $AccessToken  = $CreateTokenResponse->AccessToken;
    my $ExpiresIn    = $CreateTokenResponse->ExpiresIn;
    my $IdToken      = $CreateTokenResponse->IdToken;
    my $RefreshToken = $CreateTokenResponse->RefreshToken;
    my $TokenType    = $CreateTokenResponse->TokenType;

    # Returns a L<Paws::SSOOidc::CreateTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/oidc/CreateToken>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientId => Str

The unique identifier string for each client. This value should come
from the persisted result of the RegisterClient API.



=head2 B<REQUIRED> ClientSecret => Str

A secret string generated for the client. This value should come from
the persisted result of the RegisterClient API.



=head2 Code => Str

The authorization code received from the authorization service. This
parameter is required to perform an authorization grant request to get
access to a token.



=head2 B<REQUIRED> DeviceCode => Str

Used only when calling this API for the device code grant type. This
short-term code is used to identify this authentication attempt. This
should come from an in-memory reference to the result of the
StartDeviceAuthorization API.



=head2 B<REQUIRED> GrantType => Str

Supports grant types for authorization code, refresh token, and device
code request.



=head2 RedirectUri => Str

The location of the application that will receive the authorization
code. Users authorize the service to send the request to this location.



=head2 RefreshToken => Str

The token used to obtain an access token in the event that the access
token is invalid or expired. This token is not issued by the service.



=head2 Scope => ArrayRef[Str|Undef]

The list of scopes that is defined by the client. Upon authorization,
this list is used to restrict permissions when granting an access
token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateToken in L<Paws::SSOOidc>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

