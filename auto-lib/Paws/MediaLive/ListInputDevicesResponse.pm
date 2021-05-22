
package Paws::MediaLive::ListInputDevicesResponse;
  use Moose;
  has InputDevices => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputDeviceSummary]', traits => ['NameInRequest'], request_name => 'inputDevices');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListInputDevicesResponse

=head1 ATTRIBUTES


=head2 InputDevices => ArrayRef[L<Paws::MediaLive::InputDeviceSummary>]

The list of input devices.


=head2 NextToken => Str

A token to get additional list results.


=head2 _request_id => Str


=cut

