
package Paws::LocationService::BatchDeleteGeofenceResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::BatchDeleteGeofenceError]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::BatchDeleteGeofenceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::LocationService::BatchDeleteGeofenceError>]

Contains error details for each geofence that failed to delete.


=head2 _request_id => Str


=cut

