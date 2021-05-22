
package Paws::LocationService::BatchEvaluateGeofencesResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::BatchEvaluateGeofencesError]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::BatchEvaluateGeofencesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::LocationService::BatchEvaluateGeofencesError>]

Contains error details for each device that failed to evaluate its
position against the given geofence collection.


=head2 _request_id => Str


=cut

