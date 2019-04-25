package Paws::IoT1ClickDevices::DeviceMethod;
  use Moose;
  has DeviceType => (is => 'ro', isa => 'Str', request_name => 'deviceType', traits => ['NameInRequest']);
  has MethodName => (is => 'ro', isa => 'Str', request_name => 'methodName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::DeviceMethod

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT1ClickDevices::DeviceMethod object:

  $service_obj->Method(Att1 => { DeviceType => $value, ..., MethodName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT1ClickDevices::DeviceMethod object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceType

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DeviceType => Str

  The type of the device, such as "button".


=head2 MethodName => Str

  The name of the method applicable to the deviceType.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT1ClickDevices>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

