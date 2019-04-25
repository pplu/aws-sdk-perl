
package Paws::DeviceFarm::GetDeviceInstance;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeviceInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::GetDeviceInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetDeviceInstance - Arguments for method GetDeviceInstance on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeviceInstance on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method GetDeviceInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeviceInstance.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $GetDeviceInstanceResult = $devicefarm->GetDeviceInstance(
      Arn => 'MyAmazonResourceName',

    );

    # Results:
    my $DeviceInstance = $GetDeviceInstanceResult->DeviceInstance;

    # Returns a L<Paws::DeviceFarm::GetDeviceInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/GetDeviceInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the instance you're requesting
information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeviceInstance in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

