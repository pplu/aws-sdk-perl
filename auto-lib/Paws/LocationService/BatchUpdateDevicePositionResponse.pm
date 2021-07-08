
package Paws::LocationService::BatchUpdateDevicePositionResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::BatchUpdateDevicePositionError]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::BatchUpdateDevicePositionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::LocationService::BatchUpdateDevicePositionError>]

Contains error details for each device that failed to update its
position.


=head2 _request_id => Str


=cut

