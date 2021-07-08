
package Paws::Quicksight::SearchFoldersResponse;
  use Moose;
  has FolderSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::FolderSummary]');
  has NextToken => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::SearchFoldersResponse

=head1 ATTRIBUTES


=head2 FolderSummaryList => ArrayRef[L<Paws::Quicksight::FolderSummary>]

A structure that contains all of the folders in your AWS account. This
structure provides basic information about the folders.


=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.


=head2 RequestId => Str

The request ID.


=head2 Status => Int

The status. If succeeded, the status is C<SC_OK>.


=head2 _request_id => Str


=cut

