package Paws::IoT1ClickDevices::DeviceDescription;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::IoT1ClickDevices::DeviceAttributes', request_name => 'attributes', traits => ['NameInRequest']);
  has DeviceId => (is => 'ro', isa => 'Str', request_name => 'deviceId', traits => ['NameInRequest']);
  has Enabled => (is => 'ro', isa => 'Bool', request_name => 'enabled', traits => ['NameInRequest']);
  has RemainingLife => (is => 'ro', isa => 'Num', request_name => 'remainingLife', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::DeviceDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT1ClickDevices::DeviceDescription object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT1ClickDevices::DeviceDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::IoT1ClickDevices::DeviceAttributes>

  An array of zero or more elements of DeviceAttribute objects providing
user specified device attributes.


=head2 DeviceId => Str

  The unique identifier of the device.


=head2 Enabled => Bool

  A Boolean value indicating whether or not the device is enabled.


=head2 RemainingLife => Num

  A value between 0 and 1 inclusive, representing the fraction of life
remaining for the device.


=head2 Type => Str

  The type of the device, such as "button".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT1ClickDevices>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

