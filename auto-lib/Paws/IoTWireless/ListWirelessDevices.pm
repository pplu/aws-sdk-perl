
package Paws::IoTWireless::ListWirelessDevices;
  use Moose;
  has DestinationName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'destinationName');
  has DeviceProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'deviceProfileId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ServiceProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'serviceProfileId');
  has WirelessDeviceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'wirelessDeviceType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWirelessDevices');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless-devices');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::ListWirelessDevicesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListWirelessDevices - Arguments for method ListWirelessDevices on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWirelessDevices on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method ListWirelessDevices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWirelessDevices.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $ListWirelessDevicesResponse = $api . iotwireless->ListWirelessDevices(
      DestinationName    => 'MyDestinationName',     # OPTIONAL
      DeviceProfileId    => 'MyDeviceProfileId',     # OPTIONAL
      MaxResults         => 1,                       # OPTIONAL
      NextToken          => 'MyNextToken',           # OPTIONAL
      ServiceProfileId   => 'MyServiceProfileId',    # OPTIONAL
      WirelessDeviceType => 'Sidewalk',              # OPTIONAL
    );

    # Results:
    my $NextToken          = $ListWirelessDevicesResponse->NextToken;
    my $WirelessDeviceList = $ListWirelessDevicesResponse->WirelessDeviceList;

    # Returns a L<Paws::IoTWireless::ListWirelessDevicesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/ListWirelessDevices>

=head1 ATTRIBUTES


=head2 DestinationName => Str

A filter to list only the wireless devices that use this destination.



=head2 DeviceProfileId => Str

A filter to list only the wireless devices that use this device
profile.



=head2 MaxResults => Int

The maximum number of results to return in this operation.



=head2 NextToken => Str

To retrieve the next set of results, the C<nextToken> value from a
previous response; otherwise B<null> to receive the first set of
results.



=head2 ServiceProfileId => Str

A filter to list only the wireless devices that use this service
profile.



=head2 WirelessDeviceType => Str

A filter to list only the wireless devices that use this wireless
device type.

Valid values are: C<"Sidewalk">, C<"LoRaWAN">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWirelessDevices in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

