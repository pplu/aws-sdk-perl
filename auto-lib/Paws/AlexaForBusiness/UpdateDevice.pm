
package Paws::AlexaForBusiness::UpdateDevice;
  use Moose;
  has DeviceArn => (is => 'ro', isa => 'Str');
  has DeviceName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDevice');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::UpdateDeviceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::UpdateDevice - Arguments for method UpdateDevice on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDevice on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method UpdateDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDevice.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $UpdateDeviceResponse = $a4b->UpdateDevice(
      DeviceArn  => 'MyArn',           # OPTIONAL
      DeviceName => 'MyDeviceName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/UpdateDevice>

=head1 ATTRIBUTES


=head2 DeviceArn => Str

The ARN of the device to update. Required.



=head2 DeviceName => Str

The updated device name. Required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDevice in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

