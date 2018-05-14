
package Paws::AlexaForBusiness::ListDeviceEventsResponse;
  use Moose;
  has DeviceEvents => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::DeviceEvent]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListDeviceEventsResponse

=head1 ATTRIBUTES


=head2 DeviceEvents => ArrayRef[L<Paws::AlexaForBusiness::DeviceEvent>]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;