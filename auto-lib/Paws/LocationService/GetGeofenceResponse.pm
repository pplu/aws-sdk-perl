
package Paws::LocationService::GetGeofenceResponse;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has GeofenceId => (is => 'ro', isa => 'Str', required => 1);
  has Geometry => (is => 'ro', isa => 'Paws::LocationService::GeofenceGeometry', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::GetGeofenceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateTime => Str

The timestamp for when the geofence collection was created in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>


=head2 B<REQUIRED> GeofenceId => Str

The geofence identifier.


=head2 B<REQUIRED> Geometry => L<Paws::LocationService::GeofenceGeometry>

Contains the geofence geometry details describing a polygon.


=head2 B<REQUIRED> Status => Str

Identifies the state of the geofence. A geofence will hold one of the
following states:

=over

=item *

C<ACTIVE> E<mdash> The geofence has been indexed by the system.

=item *

C<PENDING> E<mdash> The geofence is being processed by the system.

=item *

C<FAILED> E<mdash> The geofence failed to be indexed by the system.

=item *

C<DELETED> E<mdash> The geofence has been deleted from the system
index.

=item *

C<DELETING> E<mdash> The geofence is being deleted from the system
index.

=back



=head2 B<REQUIRED> UpdateTime => Str

The timestamp for when the geofence collection was last updated in ISO
8601 (https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>


=head2 _request_id => Str


=cut

