
package Paws::Glue::ResetJobBookmarkResponse;
  use Moose;
  has JobBookmarkEntry => (is => 'ro', isa => 'Paws::Glue::JobBookmarkEntry');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ResetJobBookmarkResponse

=head1 ATTRIBUTES


=head2 JobBookmarkEntry => L<Paws::Glue::JobBookmarkEntry>

The reset bookmark entry.


=head2 _request_id => Str


=cut

1;