
package Paws::CognitoIdentity::GetOpenIdTokenForDeveloperIdentityResponse;
  use Moose;
  has IdentityId => (is => 'ro', isa => 'Str');
  has Token => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::GetOpenIdTokenForDeveloperIdentityResponse

=head1 ATTRIBUTES


=head2 IdentityId => Str

A unique identifier in the format REGION:GUID.


=head2 Token => Str

An OpenID token.


=head2 _request_id => Str


=cut

1;