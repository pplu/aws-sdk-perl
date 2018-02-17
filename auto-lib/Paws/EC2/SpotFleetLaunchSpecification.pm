package Paws::EC2::SpotFleetLaunchSpecification;
  use Moose;
  has AddressingType => (is => 'ro', isa => 'Str', request_name => 'addressingType', traits => ['NameInRequest']);
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::BlockDeviceMapping]', request_name => 'blockDeviceMapping', traits => ['NameInRequest']);
  has EbsOptimized => (is => 'ro', isa => 'Bool', request_name => 'ebsOptimized', traits => ['NameInRequest']);
  has IamInstanceProfile => (is => 'ro', isa => 'Paws::EC2::IamInstanceProfileSpecification', request_name => 'iamInstanceProfile', traits => ['NameInRequest']);
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has KernelId => (is => 'ro', isa => 'Str', request_name => 'kernelId', traits => ['NameInRequest']);
  has KeyName => (is => 'ro', isa => 'Str', request_name => 'keyName', traits => ['NameInRequest']);
  has Monitoring => (is => 'ro', isa => 'Paws::EC2::SpotFleetMonitoring', request_name => 'monitoring', traits => ['NameInRequest']);
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceNetworkInterfaceSpecification]', request_name => 'networkInterfaceSet', traits => ['NameInRequest']);
  has Placement => (is => 'ro', isa => 'Paws::EC2::SpotPlacement', request_name => 'placement', traits => ['NameInRequest']);
  has RamdiskId => (is => 'ro', isa => 'Str', request_name => 'ramdiskId', traits => ['NameInRequest']);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::GroupIdentifier]', request_name => 'groupSet', traits => ['NameInRequest']);
  has SpotPrice => (is => 'ro', isa => 'Str', request_name => 'spotPrice', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SpotFleetTagSpecification]', request_name => 'tagSpecificationSet', traits => ['NameInRequest']);
  has UserData => (is => 'ro', isa => 'Str', request_name => 'userData', traits => ['NameInRequest']);
  has WeightedCapacity => (is => 'ro', isa => 'Num', request_name => 'weightedCapacity', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SpotFleetLaunchSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SpotFleetLaunchSpecification object:

  $service_obj->Method(Att1 => { AddressingType => $value, ..., WeightedCapacity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SpotFleetLaunchSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressingType

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AddressingType => Str

  Deprecated.


=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>]

  One or more block device mapping entries. You can't specify both a
snapshot ID and an encryption value. This is because only blank volumes
can be encrypted on creation. If a snapshot is the basis for a volume,
it is not blank and its encryption status is used for the volume
encryption status.


=head2 EbsOptimized => Bool

  Indicates whether the instances are optimized for EBS I/O. This
optimization provides dedicated throughput to Amazon EBS and an
optimized configuration stack to provide optimal EBS I/O performance.
This optimization isn't available with all instance types. Additional
usage charges apply when using an EBS Optimized instance.

Default: C<false>


=head2 IamInstanceProfile => L<Paws::EC2::IamInstanceProfileSpecification>

  The IAM instance profile.


=head2 ImageId => Str

  The ID of the AMI.


=head2 InstanceType => Str

  The instance type.


=head2 KernelId => Str

  The ID of the kernel.


=head2 KeyName => Str

  The name of the key pair.


=head2 Monitoring => L<Paws::EC2::SpotFleetMonitoring>

  Enable or disable monitoring for the instances.


=head2 NetworkInterfaces => ArrayRef[L<Paws::EC2::InstanceNetworkInterfaceSpecification>]

  One or more network interfaces. If you specify a network interface, you
must specify subnet IDs and security group IDs using the network
interface.


=head2 Placement => L<Paws::EC2::SpotPlacement>

  The placement information.


=head2 RamdiskId => Str

  The ID of the RAM disk.


=head2 SecurityGroups => ArrayRef[L<Paws::EC2::GroupIdentifier>]

  One or more security groups. When requesting instances in a VPC, you
must specify the IDs of the security groups. When requesting instances
in EC2-Classic, you can specify the names or the IDs of the security
groups.


=head2 SpotPrice => Str

  The maximum price per unit hour that you are willing to pay for a Spot
Instance. If this value is not specified, the default is the Spot price
specified for the fleet. To determine the Spot price per unit hour,
divide the Spot price by the value of C<WeightedCapacity>.


=head2 SubnetId => Str

  The ID of the subnet in which to launch the instances. To specify
multiple subnets, separate them using commas; for example,
"subnet-a61dafcf, subnet-65ea5f08".


=head2 TagSpecifications => ArrayRef[L<Paws::EC2::SpotFleetTagSpecification>]

  The tags to apply during creation.


=head2 UserData => Str

  The Base64-encoded user data to make available to the instances.


=head2 WeightedCapacity => Num

  The number of units provided by the specified instance type. These are
the same units that you chose to set the target capacity in terms
(instances or a performance characteristic such as vCPUs, memory, or
I/O).

If the target capacity divided by this value is not a whole number, we
round the number of instances to the next whole number. If this value
is not specified, the default is 1.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
