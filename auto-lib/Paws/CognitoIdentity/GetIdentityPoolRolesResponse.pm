
package Paws::CognitoIdentity::GetIdentityPoolRolesResponse;
  use Moose;
  has IdentityPoolId => (is => 'ro', isa => 'Str');
  has RoleMappings => (is => 'ro', isa => 'Paws::CognitoIdentity::RoleMappingMap');
  has Roles => (is => 'ro', isa => 'Paws::CognitoIdentity::RolesMap');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::GetIdentityPoolRolesResponse

=head1 ATTRIBUTES


=head2 IdentityPoolId => Str

An identity pool ID in the format REGION:GUID.


=head2 RoleMappings => L<Paws::CognitoIdentity::RoleMappingMap>

How users for a specific identity provider are to mapped to roles. This
is a String-to-RoleMapping object map. The string identifies the
identity provider, for example, "graph.facebook.com" or
"cognito-idp-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id".


=head2 Roles => L<Paws::CognitoIdentity::RolesMap>

The map of roles associated with this pool. Currently only
authenticated and unauthenticated roles are supported.


=head2 _request_id => Str


=cut

1;