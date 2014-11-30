
package Paws::CloudWatchLogs::PutLogEventsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has nextSequenceToken => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutLogEventsResponse

=head1 ATTRIBUTES

=head2 nextSequenceToken => Str

  


=cut

1;