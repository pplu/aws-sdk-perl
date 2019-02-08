package Paws::WorkLink::DeviceSummary;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str');
  has DeviceStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::DeviceSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkLink::DeviceSummary object:

  $service_obj->Method(Att1 => { DeviceId => $value, ..., DeviceStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkLink::DeviceSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceId

=head1 DESCRIPTION

The summary of devices.

=head1 ATTRIBUTES


=head2 DeviceId => Str

  The ID of the device.


=head2 DeviceStatus => Str

  The status of the device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

