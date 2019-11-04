
package Paws::Glue::GetJobBookmarkResponse;
  use Moose;
  has JobBookmarkEntry => (is => 'ro', isa => 'Paws::Glue::JobBookmarkEntry');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetJobBookmarkResponse

=head1 ATTRIBUTES


=head2 JobBookmarkEntry => L<Paws::Glue::JobBookmarkEntry>

A structure that defines a point that a job can resume processing.


=head2 _request_id => Str


=cut

1;