
package Paws::KinesisVideoArchivedMedia::ListFragmentsOutput;
  use Moose;
  has Fragments => (is => 'ro', isa => 'ArrayRef[Paws::KinesisVideoArchivedMedia::Fragment]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoArchivedMedia::ListFragmentsOutput

=head1 ATTRIBUTES


=head2 Fragments => ArrayRef[L<Paws::KinesisVideoArchivedMedia::Fragment>]

A list of fragment numbers that correspond to the time stamp range
provided.


=head2 NextToken => Str

If the returned list is truncated, the operation returns this token to
use to retrieve the next page of results. This value is C<null> when
there are no more results to return.


=head2 _request_id => Str


=cut

