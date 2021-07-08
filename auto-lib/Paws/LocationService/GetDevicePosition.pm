
package Paws::LocationService::GetDevicePosition;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DeviceId', required => 1);
  has TrackerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TrackerName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDevicePosition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tracking/v0/trackers/{TrackerName}/devices/{DeviceId}/positions/latest');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::GetDevicePositionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::GetDevicePosition - Arguments for method GetDevicePosition on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDevicePosition on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method GetDevicePosition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDevicePosition.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $GetDevicePositionResponse = $geo->GetDevicePosition(
      DeviceId    => 'MyId',
      TrackerName => 'MyResourceName',

    );

    # Results:
    my $DeviceId     = $GetDevicePositionResponse->DeviceId;
    my $Position     = $GetDevicePositionResponse->Position;
    my $ReceivedTime = $GetDevicePositionResponse->ReceivedTime;
    my $SampleTime   = $GetDevicePositionResponse->SampleTime;

    # Returns a L<Paws::LocationService::GetDevicePositionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/GetDevicePosition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceId => Str

The device whose position you want to retrieve.



=head2 B<REQUIRED> TrackerName => Str

The tracker resource receiving the position update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDevicePosition in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

