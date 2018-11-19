package Paws::AutoScaling::BlockDeviceMapping;
  use Moose;
  has DeviceName => (is => 'ro', isa => 'Str', required => 1);
  has Ebs => (is => 'ro', isa => 'Paws::AutoScaling::Ebs');
  has NoDevice => (is => 'ro', isa => 'Bool');
  has VirtualName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::BlockDeviceMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::BlockDeviceMapping object:

  $service_obj->Method(Att1 => { DeviceName => $value, ..., VirtualName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::BlockDeviceMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceName

=head1 DESCRIPTION

Describes a block device mapping.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceName => Str

  The device name exposed to the EC2 instance (for example, C</dev/sdh>
or C<xvdh>).


=head2 Ebs => L<Paws::AutoScaling::Ebs>

  The information about the Amazon EBS volume.


=head2 NoDevice => Bool

  Suppresses a device mapping.

If this parameter is true for the root device, the instance might fail
the EC2 health check. In that case, Amazon EC2 Auto Scaling launches a
replacement instance.


=head2 VirtualName => Str

  The name of the virtual device (for example, C<ephemeral0>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

