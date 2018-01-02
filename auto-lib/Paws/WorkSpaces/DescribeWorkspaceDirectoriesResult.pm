
package Paws::WorkSpaces::DescribeWorkspaceDirectoriesResult;
  use Moose;
  has Directories => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::WorkspaceDirectory]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspaceDirectoriesResult

=head1 ATTRIBUTES


=head2 Directories => ArrayRef[L<Paws::WorkSpaces::WorkspaceDirectory>]

Information about the directories.


=head2 NextToken => Str

The token to use to retrieve the next set of results, or null if there
are no more results available. This token is valid for one day and must
be used within that time frame.


=head2 _request_id => Str


=cut

1;