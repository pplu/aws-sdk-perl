
package Paws::IoTWireless::CreateDeviceProfile;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANDeviceProfile');
  has Name => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeviceProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/device-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::CreateDeviceProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::CreateDeviceProfile - Arguments for method CreateDeviceProfile on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeviceProfile on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method CreateDeviceProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeviceProfile.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $CreateDeviceProfileResponse = $api . iotwireless->CreateDeviceProfile(
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      LoRaWAN            => {
        ClassBTimeout          => 1,                   # max: 1000; OPTIONAL
        ClassCTimeout          => 1,                   # max: 1000; OPTIONAL
        FactoryPresetFreqsList => [
          1, ...    # min: 1000000, max: 16700000
        ],          # max: 20; OPTIONAL
        MacVersion   => 'MyMacVersion',  # max: 64; OPTIONAL
        MaxDutyCycle => 1,               # max: 100; OPTIONAL
        MaxEirp      => 1,               # max: 15; OPTIONAL
        PingSlotDr   => 1,               # max: 15; OPTIONAL
        PingSlotFreq => 1,               # min: 1000000, max: 16700000; OPTIONAL
        PingSlotPeriod => 1,             # min: 128, max: 4096; OPTIONAL
        RegParamsRevision => 'MyRegParamsRevision',    # max: 64; OPTIONAL
        RfRegion          => 'MyRfRegion',             # max: 64; OPTIONAL
        RxDataRate2       => 1,                        # max: 15; OPTIONAL
        RxDelay1          => 1,                        # max: 15; OPTIONAL
        RxDrOffset1       => 1,                        # max: 7; OPTIONAL
        RxFreq2           => 1,    # min: 1000000, max: 16700000; OPTIONAL
        Supports32BitFCnt => 1,    # OPTIONAL
        SupportsClassB    => 1,    # OPTIONAL
        SupportsClassC    => 1,    # OPTIONAL
        SupportsJoin      => 1,    # OPTIONAL
      },    # OPTIONAL
      Name => 'MyDeviceProfileName',    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',          # min: 1, max: 128
          Value => 'MyTagValue',        # max: 256

        },
        ...
      ],                                # OPTIONAL
    );

    # Results:
    my $Arn = $CreateDeviceProfileResponse->Arn;
    my $Id  = $CreateDeviceProfileResponse->Id;

    # Returns a L<Paws::IoTWireless::CreateDeviceProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/CreateDeviceProfile>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Each resource must have a unique client request token. If you try to
create a new resource with the same token as a resource that already
exists, an exception occurs. If you omit this value, AWS SDKs will
automatically generate a unique client request.



=head2 LoRaWAN => L<Paws::IoTWireless::LoRaWANDeviceProfile>

The device profile information to use to create the device profile.



=head2 Name => Str

The name of the new resource.



=head2 Tags => ArrayRef[L<Paws::IoTWireless::Tag>]

The tags to attach to the new device profile. Tags are metadata that
you can use to manage a resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeviceProfile in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

