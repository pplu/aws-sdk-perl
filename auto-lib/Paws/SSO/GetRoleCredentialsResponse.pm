
package Paws::SSO::GetRoleCredentialsResponse;
  use Moose;
  has RoleCredentials => (is => 'ro', isa => 'Paws::SSO::RoleCredentials', traits => ['NameInRequest'], request_name => 'roleCredentials');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSO::GetRoleCredentialsResponse

=head1 ATTRIBUTES


=head2 RoleCredentials => L<Paws::SSO::RoleCredentials>

The credentials for the role that is assigned to the user.


=head2 _request_id => Str


=cut

