
package Paws::Quicksight::ListFolderMembersResponse;
  use Moose;
  has FolderMemberList => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::MemberIdArnPair]');
  has NextToken => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ListFolderMembersResponse

=head1 ATTRIBUTES


=head2 FolderMemberList => ArrayRef[L<Paws::Quicksight::MemberIdArnPair>]

A structure that contains all of the folder members (dashboards,
analyses, and datasets) in the folder.


=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.


=head2 RequestId => Str

The request ID.


=head2 Status => Int

The status. If succeeded, the status is C<SC_OK>


=head2 _request_id => Str


=cut

