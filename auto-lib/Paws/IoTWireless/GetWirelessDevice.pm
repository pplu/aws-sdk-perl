
package Paws::IoTWireless::GetWirelessDevice;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has IdentifierType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'identifierType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWirelessDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless-devices/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::GetWirelessDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetWirelessDevice - Arguments for method GetWirelessDevice on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWirelessDevice on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method GetWirelessDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWirelessDevice.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $GetWirelessDeviceResponse = $api . iotwireless->GetWirelessDevice(
      Identifier     => 'MyIdentifier',
      IdentifierType => 'WirelessDeviceId',

    );

    # Results:
    my $Arn             = $GetWirelessDeviceResponse->Arn;
    my $Description     = $GetWirelessDeviceResponse->Description;
    my $DestinationName = $GetWirelessDeviceResponse->DestinationName;
    my $Id              = $GetWirelessDeviceResponse->Id;
    my $LoRaWAN         = $GetWirelessDeviceResponse->LoRaWAN;
    my $Name            = $GetWirelessDeviceResponse->Name;
    my $Sidewalk        = $GetWirelessDeviceResponse->Sidewalk;
    my $ThingArn        = $GetWirelessDeviceResponse->ThingArn;
    my $ThingName       = $GetWirelessDeviceResponse->ThingName;
    my $Type            = $GetWirelessDeviceResponse->Type;

    # Returns a L<Paws::IoTWireless::GetWirelessDeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/GetWirelessDevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The identifier of the wireless device to get.



=head2 B<REQUIRED> IdentifierType => Str

The type of identifier used in C<identifier>.

Valid values are: C<"WirelessDeviceId">, C<"DevEui">, C<"ThingName">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWirelessDevice in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

