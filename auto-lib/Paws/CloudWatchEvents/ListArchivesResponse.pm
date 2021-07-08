
package Paws::CloudWatchEvents::ListArchivesResponse;
  use Moose;
  has Archives => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::Archive]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListArchivesResponse

=head1 ATTRIBUTES


=head2 Archives => ArrayRef[L<Paws::CloudWatchEvents::Archive>]

An array of C<Archive> objects that include details about an archive.


=head2 NextToken => Str

The token returned by a previous call to retrieve the next set of
results.


=head2 _request_id => Str


=cut

1;