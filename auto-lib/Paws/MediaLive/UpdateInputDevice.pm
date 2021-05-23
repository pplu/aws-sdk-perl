
package Paws::MediaLive::UpdateInputDevice;
  use Moose;
  has HdDeviceSettings => (is => 'ro', isa => 'Paws::MediaLive::InputDeviceConfigurableSettings', traits => ['NameInRequest'], request_name => 'hdDeviceSettings');
  has InputDeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'inputDeviceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has UhdDeviceSettings => (is => 'ro', isa => 'Paws::MediaLive::InputDeviceConfigurableSettings', traits => ['NameInRequest'], request_name => 'uhdDeviceSettings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInputDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/inputDevices/{inputDeviceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::UpdateInputDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateInputDevice - Arguments for method UpdateInputDevice on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInputDevice on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method UpdateInputDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInputDevice.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $UpdateInputDeviceResponse = $medialive->UpdateInputDevice(
      InputDeviceId    => 'My__string',
      HdDeviceSettings => {
        ConfiguredInput => 'AUTO',    # values: AUTO, HDMI, SDI; OPTIONAL
        MaxBitrate      => 1,         # OPTIONAL
      },    # OPTIONAL
      Name              => 'My__string',    # OPTIONAL
      UhdDeviceSettings => {
        ConfiguredInput => 'AUTO',          # values: AUTO, HDMI, SDI; OPTIONAL
        MaxBitrate      => 1,               # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Arn             = $UpdateInputDeviceResponse->Arn;
    my $ConnectionState = $UpdateInputDeviceResponse->ConnectionState;
    my $DeviceSettingsSyncState =
      $UpdateInputDeviceResponse->DeviceSettingsSyncState;
    my $DeviceUpdateStatus = $UpdateInputDeviceResponse->DeviceUpdateStatus;
    my $HdDeviceSettings   = $UpdateInputDeviceResponse->HdDeviceSettings;
    my $Id                 = $UpdateInputDeviceResponse->Id;
    my $MacAddress         = $UpdateInputDeviceResponse->MacAddress;
    my $Name               = $UpdateInputDeviceResponse->Name;
    my $NetworkSettings    = $UpdateInputDeviceResponse->NetworkSettings;
    my $SerialNumber       = $UpdateInputDeviceResponse->SerialNumber;
    my $Type               = $UpdateInputDeviceResponse->Type;
    my $UhdDeviceSettings  = $UpdateInputDeviceResponse->UhdDeviceSettings;

    # Returns a L<Paws::MediaLive::UpdateInputDeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/UpdateInputDevice>

=head1 ATTRIBUTES


=head2 HdDeviceSettings => L<Paws::MediaLive::InputDeviceConfigurableSettings>

The settings that you want to apply to the HD input device.



=head2 B<REQUIRED> InputDeviceId => Str

The unique ID of the input device. For example, hd-123456789abcdef.



=head2 Name => Str

The name that you assigned to this input device (not the unique ID).



=head2 UhdDeviceSettings => L<Paws::MediaLive::InputDeviceConfigurableSettings>

The settings that you want to apply to the UHD input device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInputDevice in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

