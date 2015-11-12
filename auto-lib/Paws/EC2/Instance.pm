package Paws::EC2::Instance;
  use Moose;
  has AmiLaunchIndex => (is => 'ro', isa => 'Int', xmlname => 'amiLaunchIndex', traits => ['Unwrapped']);
  has Architecture => (is => 'ro', isa => 'Str', xmlname => 'architecture', traits => ['Unwrapped']);
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceBlockDeviceMapping]', xmlname => 'blockDeviceMapping', traits => ['Unwrapped']);
  has ClientToken => (is => 'ro', isa => 'Str', xmlname => 'clientToken', traits => ['Unwrapped']);
  has EbsOptimized => (is => 'ro', isa => 'Bool', xmlname => 'ebsOptimized', traits => ['Unwrapped']);
  has Hypervisor => (is => 'ro', isa => 'Str', xmlname => 'hypervisor', traits => ['Unwrapped']);
  has IamInstanceProfile => (is => 'ro', isa => 'Paws::EC2::IamInstanceProfile', xmlname => 'iamInstanceProfile', traits => ['Unwrapped']);
  has ImageId => (is => 'ro', isa => 'Str', xmlname => 'imageId', traits => ['Unwrapped']);
  has InstanceId => (is => 'ro', isa => 'Str', xmlname => 'instanceId', traits => ['Unwrapped']);
  has InstanceLifecycle => (is => 'ro', isa => 'Str', xmlname => 'instanceLifecycle', traits => ['Unwrapped']);
  has InstanceType => (is => 'ro', isa => 'Str', xmlname => 'instanceType', traits => ['Unwrapped']);
  has KernelId => (is => 'ro', isa => 'Str', xmlname => 'kernelId', traits => ['Unwrapped']);
  has KeyName => (is => 'ro', isa => 'Str', xmlname => 'keyName', traits => ['Unwrapped']);
  has LaunchTime => (is => 'ro', isa => 'Str', xmlname => 'launchTime', traits => ['Unwrapped']);
  has Monitoring => (is => 'ro', isa => 'Paws::EC2::Monitoring', xmlname => 'monitoring', traits => ['Unwrapped']);
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceNetworkInterface]', xmlname => 'networkInterfaceSet', traits => ['Unwrapped']);
  has Placement => (is => 'ro', isa => 'Paws::EC2::Placement', xmlname => 'placement', traits => ['Unwrapped']);
  has Platform => (is => 'ro', isa => 'Str', xmlname => 'platform', traits => ['Unwrapped']);
  has PrivateDnsName => (is => 'ro', isa => 'Str', xmlname => 'privateDnsName', traits => ['Unwrapped']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', xmlname => 'privateIpAddress', traits => ['Unwrapped']);
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ProductCode]', xmlname => 'productCodes', traits => ['Unwrapped']);
  has PublicDnsName => (is => 'ro', isa => 'Str', xmlname => 'dnsName', traits => ['Unwrapped']);
  has PublicIpAddress => (is => 'ro', isa => 'Str', xmlname => 'ipAddress', traits => ['Unwrapped']);
  has RamdiskId => (is => 'ro', isa => 'Str', xmlname => 'ramdiskId', traits => ['Unwrapped']);
  has RootDeviceName => (is => 'ro', isa => 'Str', xmlname => 'rootDeviceName', traits => ['Unwrapped']);
  has RootDeviceType => (is => 'ro', isa => 'Str', xmlname => 'rootDeviceType', traits => ['Unwrapped']);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::GroupIdentifier]', xmlname => 'groupSet', traits => ['Unwrapped']);
  has SourceDestCheck => (is => 'ro', isa => 'Bool', xmlname => 'sourceDestCheck', traits => ['Unwrapped']);
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str', xmlname => 'spotInstanceRequestId', traits => ['Unwrapped']);
  has SriovNetSupport => (is => 'ro', isa => 'Str', xmlname => 'sriovNetSupport', traits => ['Unwrapped']);
  has State => (is => 'ro', isa => 'Paws::EC2::InstanceState', xmlname => 'instanceState', traits => ['Unwrapped']);
  has StateReason => (is => 'ro', isa => 'Paws::EC2::StateReason', xmlname => 'stateReason', traits => ['Unwrapped']);
  has StateTransitionReason => (is => 'ro', isa => 'Str', xmlname => 'reason', traits => ['Unwrapped']);
  has SubnetId => (is => 'ro', isa => 'Str', xmlname => 'subnetId', traits => ['Unwrapped']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', xmlname => 'tagSet', traits => ['Unwrapped']);
  has VirtualizationType => (is => 'ro', isa => 'Str', xmlname => 'virtualizationType', traits => ['Unwrapped']);
  has VpcId => (is => 'ro', isa => 'Str', xmlname => 'vpcId', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Instance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Instance object:

  $service_obj->Method(Att1 => { AmiLaunchIndex => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Instance object:

  $result = $service_obj->Method(...);
  $result->Att1->AmiLaunchIndex

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AmiLaunchIndex => Int

  The AMI launch index, which can be used to find this instance in the
launch group.


=head2 Architecture => Str

  The architecture of the image.


=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::InstanceBlockDeviceMapping>]

  Any block device mapping entries for the instance.


=head2 ClientToken => Str

  The idempotency token you provided when you launched the instance.


=head2 EbsOptimized => Bool

  Indicates whether the instance is optimized for EBS I/O. This
optimization provides dedicated throughput to Amazon EBS and an
optimized configuration stack to provide optimal I/O performance. This
optimization isn't available with all instance types. Additional usage
charges apply when using an EBS Optimized instance.


=head2 Hypervisor => Str

  The hypervisor type of the instance.


=head2 IamInstanceProfile => L<Paws::EC2::IamInstanceProfile>

  The IAM instance profile associated with the instance.


=head2 ImageId => Str

  The ID of the AMI used to launch the instance.


=head2 InstanceId => Str

  The ID of the instance.


=head2 InstanceLifecycle => Str

  Indicates whether this is a Spot Instance.


=head2 InstanceType => Str

  The instance type.


=head2 KernelId => Str

  The kernel associated with this instance.


=head2 KeyName => Str

  The name of the key pair, if this instance was launched with an
associated key pair.


=head2 LaunchTime => Str

  The time the instance was launched.


=head2 Monitoring => L<Paws::EC2::Monitoring>

  The monitoring information for the instance.


=head2 NetworkInterfaces => ArrayRef[L<Paws::EC2::InstanceNetworkInterface>]

  [EC2-VPC] One or more network interfaces for the instance.


=head2 Placement => L<Paws::EC2::Placement>

  The location where the instance launched.


=head2 Platform => Str

  The value is C<Windows> for Windows instances; otherwise blank.


=head2 PrivateDnsName => Str

  The private DNS name assigned to the instance. This DNS name can only
be used inside the Amazon EC2 network. This name is not available until
the instance enters the C<running> state.


=head2 PrivateIpAddress => Str

  The private IP address assigned to the instance.


=head2 ProductCodes => ArrayRef[L<Paws::EC2::ProductCode>]

  The product codes attached to this instance.


=head2 PublicDnsName => Str

  The public DNS name assigned to the instance. This name is not
available until the instance enters the C<running> state.


=head2 PublicIpAddress => Str

  The public IP address assigned to the instance.


=head2 RamdiskId => Str

  The RAM disk associated with this instance.


=head2 RootDeviceName => Str

  The root device name (for example, C</dev/sda1> or C</dev/xvda>).


=head2 RootDeviceType => Str

  The root device type used by the AMI. The AMI can use an EBS volume or
an instance store volume.


=head2 SecurityGroups => ArrayRef[L<Paws::EC2::GroupIdentifier>]

  One or more security groups for the instance.


=head2 SourceDestCheck => Bool

  Specifies whether to enable an instance launched in a VPC to perform
NAT. This controls whether source/destination checking is enabled on
the instance. A value of C<true> means checking is enabled, and
C<false> means checking is disabled. The value must be C<false> for the
instance to perform NAT. For more information, see NAT Instances in the
I<Amazon Virtual Private Cloud User Guide>.


=head2 SpotInstanceRequestId => Str

  The ID of the Spot Instance request.


=head2 SriovNetSupport => Str

  Specifies whether enhanced networking is enabled.


=head2 State => L<Paws::EC2::InstanceState>

  The current state of the instance.


=head2 StateReason => L<Paws::EC2::StateReason>

  The reason for the most recent state transition.


=head2 StateTransitionReason => Str

  The reason for the most recent state transition. This might be an empty
string.


=head2 SubnetId => Str

  The ID of the subnet in which the instance is running.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the instance.


=head2 VirtualizationType => Str

  The virtualization type of the instance.


=head2 VpcId => Str

  The ID of the VPC in which the instance is running.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
