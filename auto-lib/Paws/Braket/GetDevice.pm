
package Paws::Braket::GetDevice;
  use Moose;
  has DeviceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deviceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/device/{deviceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Braket::GetDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::GetDevice - Arguments for method GetDevice on L<Paws::Braket>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDevice on the
L<Braket|Paws::Braket> service. Use the attributes of this class
as arguments to method GetDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDevice.

=head1 SYNOPSIS

    my $braket = Paws->service('Braket');
    my $GetDeviceResponse = $braket->GetDevice(
      DeviceArn => 'MyDeviceArn',

    );

    # Results:
    my $DeviceArn          = $GetDeviceResponse->DeviceArn;
    my $DeviceCapabilities = $GetDeviceResponse->DeviceCapabilities;
    my $DeviceName         = $GetDeviceResponse->DeviceName;
    my $DeviceStatus       = $GetDeviceResponse->DeviceStatus;
    my $DeviceType         = $GetDeviceResponse->DeviceType;
    my $ProviderName       = $GetDeviceResponse->ProviderName;

    # Returns a L<Paws::Braket::GetDeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/braket/GetDevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceArn => Str

The ARN of the device to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDevice in L<Paws::Braket>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

