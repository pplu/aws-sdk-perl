
package Paws::SSO::ListAccountRolesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RoleList => (is => 'ro', isa => 'ArrayRef[Paws::SSO::RoleInfo]', traits => ['NameInRequest'], request_name => 'roleList');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSO::ListAccountRolesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The page token client that is used to retrieve the list of accounts.


=head2 RoleList => ArrayRef[L<Paws::SSO::RoleInfo>]

A paginated response with the list of roles and the next token if more
results are available.


=head2 _request_id => Str


=cut

