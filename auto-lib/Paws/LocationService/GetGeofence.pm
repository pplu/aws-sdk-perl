
package Paws::LocationService::GetGeofence;
  use Moose;
  has CollectionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CollectionName', required => 1);
  has GeofenceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GeofenceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGeofence');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/geofencing/v0/collections/{CollectionName}/geofences/{GeofenceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::GetGeofenceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::GetGeofence - Arguments for method GetGeofence on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGeofence on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method GetGeofence.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGeofence.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $GetGeofenceResponse = $geo->GetGeofence(
      CollectionName => 'MyResourceName',
      GeofenceId     => 'MyId',

    );

    # Results:
    my $CreateTime = $GetGeofenceResponse->CreateTime;
    my $GeofenceId = $GetGeofenceResponse->GeofenceId;
    my $Geometry   = $GetGeofenceResponse->Geometry;
    my $Status     = $GetGeofenceResponse->Status;
    my $UpdateTime = $GetGeofenceResponse->UpdateTime;

    # Returns a L<Paws::LocationService::GetGeofenceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/GetGeofence>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionName => Str

The geofence collection storing the target geofence.



=head2 B<REQUIRED> GeofenceId => Str

The geofence you're retrieving details for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGeofence in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

