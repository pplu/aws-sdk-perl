
package Paws::CloudWatchLogs::PutDestinationResponse;
  use Moose;
  has Destination => (is => 'ro', isa => 'Paws::CloudWatchLogs::Destination', traits => ['NameInRequest'], request_name => 'destination' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutDestinationResponse

=head1 ATTRIBUTES


=head2 Destination => L<Paws::CloudWatchLogs::Destination>

The destination.


=head2 _request_id => Str


=cut

1;