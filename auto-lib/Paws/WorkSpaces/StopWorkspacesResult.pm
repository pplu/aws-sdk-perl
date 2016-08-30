
package Paws::WorkSpaces::StopWorkspacesResult;
  use Moose;
  has FailedRequests => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::FailedWorkspaceChangeRequest]');


### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::StopWorkspacesResult

=head1 ATTRIBUTES


=head2 FailedRequests => ArrayRef[L<Paws::WorkSpaces::FailedWorkspaceChangeRequest>]

The failed requests.




=cut

1;