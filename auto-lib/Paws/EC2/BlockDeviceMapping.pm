package Paws::EC2::BlockDeviceMapping;
  use Moose;
  has DeviceName => (is => 'ro', isa => 'Str', request_name => 'deviceName', traits => ['NameInRequest']);
  has Ebs => (is => 'ro', isa => 'Paws::EC2::EbsBlockDevice', request_name => 'ebs', traits => ['NameInRequest']);
  has NoDevice => (is => 'ro', isa => 'Str', request_name => 'noDevice', traits => ['NameInRequest']);
  has VirtualName => (is => 'ro', isa => 'Str', request_name => 'virtualName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::BlockDeviceMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::BlockDeviceMapping object:

  $service_obj->Method(Att1 => { DeviceName => $value, ..., VirtualName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::BlockDeviceMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceName

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DeviceName => Str

  The device name (for example, C</dev/sdh> or C<xvdh>).


=head2 Ebs => L<Paws::EC2::EbsBlockDevice>

  Parameters used to automatically set up EBS volumes when the instance
is launched.


=head2 NoDevice => Str

  Suppresses the specified device included in the block device mapping of
the AMI.


=head2 VirtualName => Str

  The virtual device name (C<ephemeral>N). Instance store volumes are
numbered starting from 0. An instance type with 2 available instance
store volumes can specify mappings for C<ephemeral0> and C<ephemeral1>.
The number of available instance store volumes depends on the instance
type. After you connect to the instance, you must mount the volume.

NVMe instance store volumes are automatically enumerated and assigned a
device name. Including them in your block device mapping has no effect.

Constraints: For M3 instances, you must specify instance store volumes
in the block device mapping for the instance. When you launch an M3
instance, we ignore any instance store volumes specified in the block
device mapping for the AMI.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
