
package Paws::MediaLive::ListInputDeviceTransfersResponse;
  use Moose;
  has InputDeviceTransfers => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::TransferringInputDeviceSummary]', traits => ['NameInRequest'], request_name => 'inputDeviceTransfers');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListInputDeviceTransfersResponse

=head1 ATTRIBUTES


=head2 InputDeviceTransfers => ArrayRef[L<Paws::MediaLive::TransferringInputDeviceSummary>]

The list of devices that you are transferring or are being transferred
to you.


=head2 NextToken => Str

A token to get additional list results.


=head2 _request_id => Str


=cut

