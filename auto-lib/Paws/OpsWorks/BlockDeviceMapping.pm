package Paws::OpsWorks::BlockDeviceMapping;
  use Moose;
  has DeviceName => (is => 'ro', isa => 'Str');
  has Ebs => (is => 'ro', isa => 'Paws::OpsWorks::EbsBlockDevice');
  has NoDevice => (is => 'ro', isa => 'Str');
  has VirtualName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::BlockDeviceMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::BlockDeviceMapping object:

  $service_obj->Method(Att1 => { DeviceName => $value, ..., VirtualName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::BlockDeviceMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceName

=head1 DESCRIPTION

Describes a block device mapping. This data type maps directly to the
Amazon EC2 BlockDeviceMapping
(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html)
data type.

=head1 ATTRIBUTES


=head2 DeviceName => Str

  The device name that is exposed to the instance, such as C</dev/sdh>.
For the root device, you can use the explicit device name or you can
set this parameter to C<ROOT_DEVICE> and AWS OpsWorks Stacks will
provide the correct device name.


=head2 Ebs => L<Paws::OpsWorks::EbsBlockDevice>

  An C<EBSBlockDevice> that defines how to configure an Amazon EBS volume
when the instance is launched.


=head2 NoDevice => Str

  Suppresses the specified device included in the AMI's block device
mapping.


=head2 VirtualName => Str

  The virtual device name. For more information, see BlockDeviceMapping
(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

