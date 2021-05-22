
package Paws::SageMaker::ListDeviceFleetsResponse;
  use Moose;
  has DeviceFleetSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::DeviceFleetSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListDeviceFleetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceFleetSummaries => ArrayRef[L<Paws::SageMaker::DeviceFleetSummary>]

Summary of the device fleet.


=head2 NextToken => Str

The response from the last list when returning a list large enough to
need tokening.


=head2 _request_id => Str


=cut

1;