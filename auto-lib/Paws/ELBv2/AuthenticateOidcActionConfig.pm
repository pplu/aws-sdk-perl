package Paws::ELBv2::AuthenticateOidcActionConfig;
  use Moose;
  has AuthenticationRequestExtraParams => (is => 'ro', isa => 'Paws::ELBv2::AuthenticateOidcActionAuthenticationRequestExtraParams');
  has AuthorizationEndpoint => (is => 'ro', isa => 'Str', required => 1);
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientSecret => (is => 'ro', isa => 'Str', required => 1);
  has Issuer => (is => 'ro', isa => 'Str', required => 1);
  has OnUnauthenticatedRequest => (is => 'ro', isa => 'Str');
  has Scope => (is => 'ro', isa => 'Str');
  has SessionCookieName => (is => 'ro', isa => 'Str');
  has SessionTimeout => (is => 'ro', isa => 'Int');
  has TokenEndpoint => (is => 'ro', isa => 'Str', required => 1);
  has UserInfoEndpoint => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::AuthenticateOidcActionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::AuthenticateOidcActionConfig object:

  $service_obj->Method(Att1 => { AuthenticationRequestExtraParams => $value, ..., UserInfoEndpoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::AuthenticateOidcActionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthenticationRequestExtraParams

=head1 DESCRIPTION

Request parameters when using an identity provider (IdP) that is
compliant with OpenID Connect (OIDC) to authenticate users.

=head1 ATTRIBUTES


=head2 AuthenticationRequestExtraParams => L<Paws::ELBv2::AuthenticateOidcActionAuthenticationRequestExtraParams>

  The query parameters (up to 10) to include in the redirect request to
the authorization endpoint.


=head2 B<REQUIRED> AuthorizationEndpoint => Str

  The authorization endpoint of the IdP. This must be a full URL,
including the HTTPS protocol, the domain, and the path.


=head2 B<REQUIRED> ClientId => Str

  The OAuth 2.0 client identifier.


=head2 B<REQUIRED> ClientSecret => Str

  The OAuth 2.0 client secret.


=head2 B<REQUIRED> Issuer => Str

  The OIDC issuer identifier of the IdP. This must be a full URL,
including the HTTPS protocol, the domain, and the path.


=head2 OnUnauthenticatedRequest => Str

  The behavior if the user is not authenticated. The following are
possible values:

=over

=item *

denyC< - Return an HTTP 401 Unauthorized error.>

=item *

allowC< - Allow the request to be forwarded to the target.>

=item *

authenticateC< - Redirect the request to the IdP authorization
endpoint. This is the default value.>

=back



=head2 Scope => Str

  The set of user claims to be requested from the IdP. The default is
C<openid>.

To verify which scope values your IdP supports and how to separate
multiple values, see the documentation for your IdP.


=head2 SessionCookieName => Str

  The name of the cookie used to maintain session information. The
default is AWSELBAuthSessionCookie.


=head2 SessionTimeout => Int

  The maximum duration of the authentication session, in seconds. The
default is 604800 seconds (7 days).


=head2 B<REQUIRED> TokenEndpoint => Str

  The token endpoint of the IdP. This must be a full URL, including the
HTTPS protocol, the domain, and the path.


=head2 B<REQUIRED> UserInfoEndpoint => Str

  The user info endpoint of the IdP. This must be a full URL, including
the HTTPS protocol, the domain, and the path.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

