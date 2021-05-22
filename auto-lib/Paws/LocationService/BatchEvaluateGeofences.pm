
package Paws::LocationService::BatchEvaluateGeofences;
  use Moose;
  has CollectionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CollectionName', required => 1);
  has DevicePositionUpdates => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::DevicePositionUpdate]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchEvaluateGeofences');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/geofencing/v0/collections/{CollectionName}/positions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::BatchEvaluateGeofencesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::BatchEvaluateGeofences - Arguments for method BatchEvaluateGeofences on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchEvaluateGeofences on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method BatchEvaluateGeofences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchEvaluateGeofences.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $BatchEvaluateGeofencesResponse = $geo->BatchEvaluateGeofences(
      CollectionName        => 'MyResourceName',
      DevicePositionUpdates => [
        {
          DeviceId   => 'MyId',                  # min: 1, max: 100
          Position   => [ 1, ... ],              # min: 2, max: 2
          SampleTime => '1970-01-01T01:00:00',

        },
        ...
      ],

    );

    # Results:
    my $Errors = $BatchEvaluateGeofencesResponse->Errors;

    # Returns a L<Paws::LocationService::BatchEvaluateGeofencesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/BatchEvaluateGeofences>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionName => Str

The geofence collection used in evaluating the position of devices
against its geofences.



=head2 B<REQUIRED> DevicePositionUpdates => ArrayRef[L<Paws::LocationService::DevicePositionUpdate>]

Contains device details for each device to be evaluated against the
given geofence collection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchEvaluateGeofences in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

