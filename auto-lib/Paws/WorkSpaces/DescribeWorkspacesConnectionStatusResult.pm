
package Paws::WorkSpaces::DescribeWorkspacesConnectionStatusResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WorkspacesConnectionStatus => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::WorkspaceConnectionStatus]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspacesConnectionStatusResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next set of results, or null if no
more results are available.


=head2 WorkspacesConnectionStatus => ArrayRef[L<Paws::WorkSpaces::WorkspaceConnectionStatus>]

Information about the connection status of the WorkSpace.


=head2 _request_id => Str


=cut

1;