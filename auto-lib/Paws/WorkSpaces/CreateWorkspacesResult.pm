
package Paws::WorkSpaces::CreateWorkspacesResult;
  use Moose;
  has FailedRequests => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::FailedCreateWorkspaceRequest]');
  has PendingRequests => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::Workspace]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateWorkspacesResult

=head1 ATTRIBUTES


=head2 FailedRequests => ArrayRef[L<Paws::WorkSpaces::FailedCreateWorkspaceRequest>]

Information about the WorkSpaces that could not be created.


=head2 PendingRequests => ArrayRef[L<Paws::WorkSpaces::Workspace>]

Information about the WorkSpaces that were created.

Because this operation is asynchronous, the identifier returned is not
immediately available for use with other operations. For example, if
you call DescribeWorkspaces before the WorkSpace is created, the
information returned can be incomplete.


=head2 _request_id => Str


=cut

1;