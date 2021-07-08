
package Paws::LocationService::BatchUpdateDevicePosition;
  use Moose;
  has TrackerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TrackerName', required => 1);
  has Updates => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::DevicePositionUpdate]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdateDevicePosition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tracking/v0/trackers/{TrackerName}/positions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::BatchUpdateDevicePositionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::BatchUpdateDevicePosition - Arguments for method BatchUpdateDevicePosition on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateDevicePosition on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method BatchUpdateDevicePosition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateDevicePosition.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $BatchUpdateDevicePositionResponse = $geo->BatchUpdateDevicePosition(
      TrackerName => 'MyResourceName',
      Updates     => [
        {
          DeviceId   => 'MyId',                  # min: 1, max: 100
          Position   => [ 1, ... ],              # min: 2, max: 2
          SampleTime => '1970-01-01T01:00:00',

        },
        ...
      ],

    );

    # Results:
    my $Errors = $BatchUpdateDevicePositionResponse->Errors;

 # Returns a L<Paws::LocationService::BatchUpdateDevicePositionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/BatchUpdateDevicePosition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrackerName => Str

The name of the tracker resource to update.



=head2 B<REQUIRED> Updates => ArrayRef[L<Paws::LocationService::DevicePositionUpdate>]

Contains the position update details for each device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateDevicePosition in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

