
package Paws::AlexaForBusiness::SearchDevicesResponse;
  use Moose;
  has Devices => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::DeviceData]');
  has NextToken => (is => 'ro', isa => 'Str');
  has TotalCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SearchDevicesResponse

=head1 ATTRIBUTES


=head2 Devices => ArrayRef[L<Paws::AlexaForBusiness::DeviceData>]

The devices that meet the specified set of filter criteria, in sort
order.


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 TotalCount => Int

The total number of devices returned.


=head2 _request_id => Str


=cut

1;