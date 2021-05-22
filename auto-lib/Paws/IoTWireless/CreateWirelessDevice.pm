
package Paws::IoTWireless::CreateWirelessDevice;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DestinationName => (is => 'ro', isa => 'Str', required => 1);
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANDevice');
  has Name => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::Tag]');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWirelessDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless-devices');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::CreateWirelessDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::CreateWirelessDevice - Arguments for method CreateWirelessDevice on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWirelessDevice on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method CreateWirelessDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWirelessDevice.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $CreateWirelessDeviceResponse = $api . iotwireless->CreateWirelessDevice(
      DestinationName    => 'MyDestinationName',
      Type               => 'Sidewalk',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Description        => 'MyDescription',           # OPTIONAL
      LoRaWAN            => {
        AbpV1_0_x => {
          DevAddr     => 'MyDevAddr',                  # OPTIONAL
          SessionKeys => {
            AppSKey => 'MyAppSKey',                    # OPTIONAL
            NwkSKey => 'MyNwkSKey',                    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        AbpV1_1 => {
          DevAddr     => 'MyDevAddr',    # OPTIONAL
          SessionKeys => {
            AppSKey     => 'MyAppSKey',        # OPTIONAL
            FNwkSIntKey => 'MyFNwkSIntKey',    # OPTIONAL
            NwkSEncKey  => 'MyNwkSEncKey',     # OPTIONAL
            SNwkSIntKey => 'MySNwkSIntKey',    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        DevEui          => 'MyDevEui',             # OPTIONAL
        DeviceProfileId => 'MyDeviceProfileId',    # max: 256; OPTIONAL
        OtaaV1_0_x      => {
          AppEui => 'MyAppEui',                    # OPTIONAL
          AppKey => 'MyAppKey',                    # OPTIONAL
        },    # OPTIONAL
        OtaaV1_1 => {
          AppKey  => 'MyAppKey',     # OPTIONAL
          JoinEui => 'MyJoinEui',    # OPTIONAL
          NwkKey  => 'MyNwkKey',     # OPTIONAL
        },    # OPTIONAL
        ServiceProfileId => 'MyServiceProfileId',    # max: 256; OPTIONAL
      },    # OPTIONAL
      Name => 'MyWirelessDeviceName',    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',           # min: 1, max: 128
          Value => 'MyTagValue',         # max: 256

        },
        ...
      ],                                 # OPTIONAL
    );

    # Results:
    my $Arn = $CreateWirelessDeviceResponse->Arn;
    my $Id  = $CreateWirelessDeviceResponse->Id;

    # Returns a L<Paws::IoTWireless::CreateWirelessDeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/CreateWirelessDevice>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Each resource must have a unique client request token. If you try to
create a new resource with the same token as a resource that already
exists, an exception occurs. If you omit this value, AWS SDKs will
automatically generate a unique client request.



=head2 Description => Str

The description of the new resource.



=head2 B<REQUIRED> DestinationName => Str

The name of the destination to assign to the new wireless device.



=head2 LoRaWAN => L<Paws::IoTWireless::LoRaWANDevice>

The device configuration information to use to create the wireless
device.



=head2 Name => Str

The name of the new resource.



=head2 Tags => ArrayRef[L<Paws::IoTWireless::Tag>]

The tags to attach to the new wireless device. Tags are metadata that
you can use to manage a resource.



=head2 B<REQUIRED> Type => Str

The wireless device type.

Valid values are: C<"Sidewalk">, C<"LoRaWAN">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWirelessDevice in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

