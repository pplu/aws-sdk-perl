
package Paws::LocationService::BatchDeleteGeofence;
  use Moose;
  has CollectionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CollectionName', required => 1);
  has GeofenceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteGeofence');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/geofencing/v0/collections/{CollectionName}/delete-geofences');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::BatchDeleteGeofenceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::BatchDeleteGeofence - Arguments for method BatchDeleteGeofence on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteGeofence on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method BatchDeleteGeofence.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteGeofence.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $BatchDeleteGeofenceResponse = $geo->BatchDeleteGeofence(
      CollectionName => 'MyResourceName',
      GeofenceIds    => [
        'MyId', ...    # min: 1, max: 100
      ],

    );

    # Results:
    my $Errors = $BatchDeleteGeofenceResponse->Errors;

    # Returns a L<Paws::LocationService::BatchDeleteGeofenceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/BatchDeleteGeofence>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionName => Str

The geofence collection storing the geofences to be deleted.



=head2 B<REQUIRED> GeofenceIds => ArrayRef[Str|Undef]

The batch of geofences to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteGeofence in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

