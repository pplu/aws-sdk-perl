
package Paws::IoTWireless::ListDestinationsResponse;
  use Moose;
  has DestinationList => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::Destinations]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListDestinationsResponse

=head1 ATTRIBUTES


=head2 DestinationList => ArrayRef[L<Paws::IoTWireless::Destinations>]

The list of destinations.


=head2 NextToken => Str

The token to use to get the next set of results, or B<null> if there
are no additional results.


=head2 _request_id => Str


=cut

