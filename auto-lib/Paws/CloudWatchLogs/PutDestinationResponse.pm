
package Paws::CloudWatchLogs::PutDestinationResponse;
  use Moose;
  has Destination => (is => 'ro', isa => 'Paws::CloudWatchLogs::Destination', traits => ['Unwrapped'], xmlname => 'destination' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutDestinationResponse

=head1 ATTRIBUTES


=head2 Destination => L<Paws::CloudWatchLogs::Destination>




=head2 _request_id => Str


=cut

1;