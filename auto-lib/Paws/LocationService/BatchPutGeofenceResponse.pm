
package Paws::LocationService::BatchPutGeofenceResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::BatchPutGeofenceError]', required => 1);
  has Successes => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::BatchPutGeofenceSuccess]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::BatchPutGeofenceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::LocationService::BatchPutGeofenceError>]

Contains additional error details for each geofence that failed to be
stored in a geofence collection.


=head2 B<REQUIRED> Successes => ArrayRef[L<Paws::LocationService::BatchPutGeofenceSuccess>]

Contains each geofence that was successfully stored in a geofence
collection.


=head2 _request_id => Str


=cut

