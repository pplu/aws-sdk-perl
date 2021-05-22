
package Paws::IoTWireless::SendDataToWirelessDevice;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has PayloadData => (is => 'ro', isa => 'Str', required => 1);
  has TransmitMode => (is => 'ro', isa => 'Int', required => 1);
  has WirelessMetadata => (is => 'ro', isa => 'Paws::IoTWireless::WirelessMetadata');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendDataToWirelessDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless-devices/{Id}/data');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::SendDataToWirelessDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::SendDataToWirelessDevice - Arguments for method SendDataToWirelessDevice on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendDataToWirelessDevice on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method SendDataToWirelessDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendDataToWirelessDevice.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $SendDataToWirelessDeviceResponse =
      $api . iotwireless->SendDataToWirelessDevice(
      Id               => 'MyWirelessDeviceId',
      PayloadData      => 'MyPayloadData',
      TransmitMode     => 1,
      WirelessMetadata => {
        LoRaWAN => {
          FPort => 1,    # min: 1, max: 223; OPTIONAL
        },    # OPTIONAL
        Sidewalk => {
          MessageType => 'CUSTOM_COMMAND_ID_NOTIFY'
          , # values: CUSTOM_COMMAND_ID_NOTIFY, CUSTOM_COMMAND_ID_GET, CUSTOM_COMMAND_ID_SET, CUSTOM_COMMAND_ID_RESP; OPTIONAL
          Seq => 1,    # max: 16383; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $MessageId = $SendDataToWirelessDeviceResponse->MessageId;

    # Returns a L<Paws::IoTWireless::SendDataToWirelessDeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/SendDataToWirelessDevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the wireless device to receive the data.



=head2 B<REQUIRED> PayloadData => Str

The message payload to send.



=head2 B<REQUIRED> TransmitMode => Int

The transmit mode to use to send data to the wireless device. Can be:
C<0> for UM (unacknowledge mode) or C<1> for AM (acknowledge mode).



=head2 WirelessMetadata => L<Paws::IoTWireless::WirelessMetadata>

Metadata about the message request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendDataToWirelessDevice in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

