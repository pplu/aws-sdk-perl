package Paws::ELBv2::AuthenticateCognitoActionConfig;
  use Moose;
  has AuthenticationRequestExtraParams => (is => 'ro', isa => 'Paws::ELBv2::AuthenticateCognitoActionAuthenticationRequestExtraParams');
  has OnUnauthenticatedRequest => (is => 'ro', isa => 'Str');
  has Scope => (is => 'ro', isa => 'Str');
  has SessionCookieName => (is => 'ro', isa => 'Str');
  has SessionTimeout => (is => 'ro', isa => 'Int');
  has UserPoolArn => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolClientId => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolDomain => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::AuthenticateCognitoActionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::AuthenticateCognitoActionConfig object:

  $service_obj->Method(Att1 => { AuthenticationRequestExtraParams => $value, ..., UserPoolDomain => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::AuthenticateCognitoActionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthenticationRequestExtraParams

=head1 DESCRIPTION

Request parameters to use when integrating with Amazon Cognito to
authenticate users.

=head1 ATTRIBUTES


=head2 AuthenticationRequestExtraParams => L<Paws::ELBv2::AuthenticateCognitoActionAuthenticationRequestExtraParams>

  The query parameters (up to 10) to include in the redirect request to
the authorization endpoint.


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


=head2 B<REQUIRED> UserPoolArn => Str

  The Amazon Resource Name (ARN) of the Amazon Cognito user pool.


=head2 B<REQUIRED> UserPoolClientId => Str

  The ID of the Amazon Cognito user pool client.


=head2 B<REQUIRED> UserPoolDomain => Str

  The domain prefix or fully-qualified domain name of the Amazon Cognito
user pool.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

