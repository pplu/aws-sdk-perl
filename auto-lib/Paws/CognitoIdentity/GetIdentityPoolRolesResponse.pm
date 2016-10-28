
package Paws::CognitoIdentity::GetIdentityPoolRolesResponse;
  use Moose;
  has IdentityPoolId => (is => 'ro', isa => 'Str');
  has Roles => (is => 'ro', isa => 'Paws::CognitoIdentity::RolesMap');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::GetIdentityPoolRolesResponse

=head1 ATTRIBUTES


=head2 IdentityPoolId => Str

An identity pool ID in the format REGION:GUID.



=head2 Roles => L<Paws::CognitoIdentity::RolesMap>

The map of roles associated with this pool. Currently only
authenticated and unauthenticated roles are supported.




=cut

1;