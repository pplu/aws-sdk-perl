
package Paws::Glue::GetJobBookmarksResponse;
  use Moose;
  has JobBookmarkEntries => (is => 'ro', isa => 'ArrayRef[Paws::Glue::JobBookmarkEntry]');
  has NextToken => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetJobBookmarksResponse

=head1 ATTRIBUTES


=head2 JobBookmarkEntries => ArrayRef[L<Paws::Glue::JobBookmarkEntry>]

A list of job bookmark entries that defines a point that a job can
resume processing.


=head2 NextToken => Int

A continuation token, which has a value of 1 if all the entries are
returned, or E<gt> 1 if not all requested job runs have been returned.


=head2 _request_id => Str


=cut

1;