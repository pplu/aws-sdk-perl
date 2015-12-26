
package Paws::CloudWatchLogs::PutDestinationResponse;
  use Moose;
  has Destination => (is => 'ro', isa => 'Paws::CloudWatchLogs::Destination', traits => ['Unwrapped'], xmlname => 'destination' );


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutDestinationResponse

=head1 ATTRIBUTES


=head2 Destination => L<Paws::CloudWatchLogs::Destination>






=cut

1;