
package Paws::LocationService::PutGeofenceResponse;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has GeofenceId => (is => 'ro', isa => 'Str', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::PutGeofenceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateTime => Str

The timestamp for when the geofence was created in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>


=head2 B<REQUIRED> GeofenceId => Str

The geofence identifier entered in the request.


=head2 B<REQUIRED> UpdateTime => Str

The timestamp for when the geofence was last updated in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>


=head2 _request_id => Str


=cut

