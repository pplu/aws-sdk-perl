
package Paws::WorkSpaces::DescribeWorkspacesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Workspaces => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::Workspace]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspacesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next set of results, or null if no
more results are available.


=head2 Workspaces => ArrayRef[L<Paws::WorkSpaces::Workspace>]

Information about the WorkSpaces.

Because CreateWorkspaces is an asynchronous operation, some of the
returned information could be incomplete.


=head2 _request_id => Str


=cut

1;