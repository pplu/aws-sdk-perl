
package Paws::LocationService::BatchPutGeofence;
  use Moose;
  has CollectionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CollectionName', required => 1);
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::BatchPutGeofenceRequestEntry]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchPutGeofence');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/geofencing/v0/collections/{CollectionName}/put-geofences');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::BatchPutGeofenceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::BatchPutGeofence - Arguments for method BatchPutGeofence on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchPutGeofence on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method BatchPutGeofence.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchPutGeofence.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $BatchPutGeofenceResponse = $geo->BatchPutGeofence(
      CollectionName => 'MyResourceName',
      Entries        => [
        {
          GeofenceId => 'MyId',    # min: 1, max: 100
          Geometry   => {
            Polygon => [
              [
                [ 1, ... ], ...    # min: 2, max: 2
              ],
              ...                  # min: 4
            ],                     # min: 1; OPTIONAL
          },

        },
        ...
      ],

    );

    # Results:
    my $Errors    = $BatchPutGeofenceResponse->Errors;
    my $Successes = $BatchPutGeofenceResponse->Successes;

    # Returns a L<Paws::LocationService::BatchPutGeofenceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/BatchPutGeofence>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionName => Str

The geofence collection storing the geofences.



=head2 B<REQUIRED> Entries => ArrayRef[L<Paws::LocationService::BatchPutGeofenceRequestEntry>]

The batch of geofences to be stored in a geofence collection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchPutGeofence in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

