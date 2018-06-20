package Paws::IoT1ClickDevices::DeviceEvent;
  use Moose;
  has Device => (is => 'ro', isa => 'Paws::IoT1ClickDevices::Device', request_name => 'device', traits => ['NameInRequest']);
  has StdEvent => (is => 'ro', isa => 'Str', request_name => 'stdEvent', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::DeviceEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT1ClickDevices::DeviceEvent object:

  $service_obj->Method(Att1 => { Device => $value, ..., StdEvent => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT1ClickDevices::DeviceEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->Device

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Device => L<Paws::IoT1ClickDevices::Device>

  An object representing the device associated with the event.


=head2 StdEvent => Str

  A serialized JSON object representing the device-type specific event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT1ClickDevices>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

