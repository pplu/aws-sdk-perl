
package Paws::LocationService::GetDevicePositionHistoryResponse;
  use Moose;
  has DevicePositions => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::DevicePosition]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::GetDevicePositionHistoryResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DevicePositions => ArrayRef[L<Paws::LocationService::DevicePosition>]

Contains the position history details for the requested device.


=head2 NextToken => Str

A pagination token indicating there are additional pages available. You
can use the token in a following request to fetch the next set of
results.


=head2 _request_id => Str


=cut

