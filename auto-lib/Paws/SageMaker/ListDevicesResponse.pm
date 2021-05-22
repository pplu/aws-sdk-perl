
package Paws::SageMaker::ListDevicesResponse;
  use Moose;
  has DeviceSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::DeviceSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListDevicesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceSummaries => ArrayRef[L<Paws::SageMaker::DeviceSummary>]

Summary of devices.


=head2 NextToken => Str

The response from the last list when returning a list large enough to
need tokening.


=head2 _request_id => Str


=cut

1;