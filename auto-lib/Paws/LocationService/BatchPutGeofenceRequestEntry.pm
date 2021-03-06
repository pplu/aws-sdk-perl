# Generated by default/object.tt
package Paws::LocationService::BatchPutGeofenceRequestEntry;
  use Moose;
  has GeofenceId => (is => 'ro', isa => 'Str', required => 1);
  has Geometry => (is => 'ro', isa => 'Paws::LocationService::GeofenceGeometry', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::BatchPutGeofenceRequestEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LocationService::BatchPutGeofenceRequestEntry object:

  $service_obj->Method(Att1 => { GeofenceId => $value, ..., Geometry => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LocationService::BatchPutGeofenceRequestEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->GeofenceId

=head1 DESCRIPTION

Contains geofence geometry details.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GeofenceId => Str

The identifier for the geofence to be stored in a given geofence
collection.


=head2 B<REQUIRED> Geometry => L<Paws::LocationService::GeofenceGeometry>

Contains the polygon details to specify the position of the geofence.

Each geofence polygon
(https://docs.aws.amazon.com/location-geofences/latest/APIReference/API_GeofenceGeometry.html)
can have a maximum of 1,000 vertices.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

