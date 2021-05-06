
package Paws::RAM::ListPermissionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::RAM::ResourceSharePermissionSummary]', traits => ['NameInRequest'], request_name => 'permissions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ListPermissionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Permissions => ArrayRef[L<Paws::RAM::ResourceSharePermissionSummary>]

Information about the permissions.


=head2 _request_id => Str


=cut

