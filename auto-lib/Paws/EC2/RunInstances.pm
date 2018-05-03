
package Paws::EC2::RunInstances;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'additionalInfo' );
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::BlockDeviceMapping]', traits => ['NameInRequest'], request_name => 'BlockDeviceMapping' );
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has CreditSpecification => (is => 'ro', isa => 'Paws::EC2::CreditSpecificationRequest');
  has DisableApiTermination => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'disableApiTermination' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has EbsOptimized => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'ebsOptimized' );
  has ElasticGpuSpecification => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ElasticGpuSpecification]');
  has IamInstanceProfile => (is => 'ro', isa => 'Paws::EC2::IamInstanceProfileSpecification', traits => ['NameInRequest'], request_name => 'iamInstanceProfile' );
  has ImageId => (is => 'ro', isa => 'Str');
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceInitiatedShutdownBehavior' );
  has InstanceMarketOptions => (is => 'ro', isa => 'Paws::EC2::InstanceMarketOptionsRequest');
  has InstanceType => (is => 'ro', isa => 'Str');
  has Ipv6AddressCount => (is => 'ro', isa => 'Int');
  has Ipv6Addresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceIpv6Address]', traits => ['NameInRequest'], request_name => 'Ipv6Address' );
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has LaunchTemplate => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateSpecification');
  has MaxCount => (is => 'ro', isa => 'Int', required => 1);
  has MinCount => (is => 'ro', isa => 'Int', required => 1);
  has Monitoring => (is => 'ro', isa => 'Paws::EC2::RunInstancesMonitoringEnabled');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceNetworkInterfaceSpecification]', traits => ['NameInRequest'], request_name => 'networkInterface' );
  has Placement => (is => 'ro', isa => 'Paws::EC2::Placement');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'privateIpAddress' );
  has RamdiskId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SecurityGroup' );
  has SubnetId => (is => 'ro', isa => 'Str');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has UserData => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RunInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::Reservation');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RunInstances - Arguments for method RunInstances on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RunInstances on the 
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method RunInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RunInstances.

As an example:

  $service_obj->RunInstances(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AdditionalInfo => Str

Reserved.



=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>]

One or more block device mapping entries. You can't specify both a
snapshot ID and an encryption value. This is because only blank volumes
can be encrypted on creation. If a snapshot is the basis for a volume,
it is not blank and its encryption status is used for the volume
encryption status.



=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. For more information, see Ensuring Idempotency
(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).

Constraints: Maximum 64 ASCII characters



=head2 CreditSpecification => L<Paws::EC2::CreditSpecificationRequest>

The credit option for CPU usage of the instance. Valid values are
C<standard> and C<unlimited>. To change this attribute after launch,
use ModifyInstanceCreditSpecification. For more information, see T2
Instances
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/t2-instances.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

Default: C<standard>



=head2 DisableApiTermination => Bool

If you set this parameter to C<true>, you can't terminate the instance
using the Amazon EC2 console, CLI, or API; otherwise, you can. To
change this attribute to C<false> after launch, use
ModifyInstanceAttribute. Alternatively, if you set
C<InstanceInitiatedShutdownBehavior> to C<terminate>, you can terminate
the instance by running the shutdown command from the instance.

Default: C<false>



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EbsOptimized => Bool

Indicates whether the instance is optimized for Amazon EBS I/O. This
optimization provides dedicated throughput to Amazon EBS and an
optimized configuration stack to provide optimal Amazon EBS I/O
performance. This optimization isn't available with all instance types.
Additional usage charges apply when using an EBS-optimized instance.

Default: C<false>



=head2 ElasticGpuSpecification => ArrayRef[L<Paws::EC2::ElasticGpuSpecification>]

An elastic GPU to associate with the instance.



=head2 IamInstanceProfile => L<Paws::EC2::IamInstanceProfileSpecification>

The IAM instance profile.



=head2 ImageId => Str

The ID of the AMI, which you can get by calling DescribeImages. An AMI
is required to launch an instance and must be specified here or in a
launch template.



=head2 InstanceInitiatedShutdownBehavior => Str

Indicates whether an instance stops or terminates when you initiate
shutdown from the instance (using the operating system command for
system shutdown).

Default: C<stop>

Valid values are: C<"stop">, C<"terminate">

=head2 InstanceMarketOptions => L<Paws::EC2::InstanceMarketOptionsRequest>

The market (purchasing) option for the instances.



=head2 InstanceType => Str

The instance type. For more information, see Instance Types
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

Default: C<m1.small>

Valid values are: C<"t1.micro">, C<"t2.nano">, C<"t2.micro">, C<"t2.small">, C<"t2.medium">, C<"t2.large">, C<"t2.xlarge">, C<"t2.2xlarge">, C<"m1.small">, C<"m1.medium">, C<"m1.large">, C<"m1.xlarge">, C<"m3.medium">, C<"m3.large">, C<"m3.xlarge">, C<"m3.2xlarge">, C<"m4.large">, C<"m4.xlarge">, C<"m4.2xlarge">, C<"m4.4xlarge">, C<"m4.10xlarge">, C<"m4.16xlarge">, C<"m2.xlarge">, C<"m2.2xlarge">, C<"m2.4xlarge">, C<"cr1.8xlarge">, C<"r3.large">, C<"r3.xlarge">, C<"r3.2xlarge">, C<"r3.4xlarge">, C<"r3.8xlarge">, C<"r4.large">, C<"r4.xlarge">, C<"r4.2xlarge">, C<"r4.4xlarge">, C<"r4.8xlarge">, C<"r4.16xlarge">, C<"x1.16xlarge">, C<"x1.32xlarge">, C<"x1e.xlarge">, C<"x1e.2xlarge">, C<"x1e.4xlarge">, C<"x1e.8xlarge">, C<"x1e.16xlarge">, C<"x1e.32xlarge">, C<"i2.xlarge">, C<"i2.2xlarge">, C<"i2.4xlarge">, C<"i2.8xlarge">, C<"i3.large">, C<"i3.xlarge">, C<"i3.2xlarge">, C<"i3.4xlarge">, C<"i3.8xlarge">, C<"i3.16xlarge">, C<"hi1.4xlarge">, C<"hs1.8xlarge">, C<"c1.medium">, C<"c1.xlarge">, C<"c3.large">, C<"c3.xlarge">, C<"c3.2xlarge">, C<"c3.4xlarge">, C<"c3.8xlarge">, C<"c4.large">, C<"c4.xlarge">, C<"c4.2xlarge">, C<"c4.4xlarge">, C<"c4.8xlarge">, C<"c5.large">, C<"c5.xlarge">, C<"c5.2xlarge">, C<"c5.4xlarge">, C<"c5.9xlarge">, C<"c5.18xlarge">, C<"cc1.4xlarge">, C<"cc2.8xlarge">, C<"g2.2xlarge">, C<"g2.8xlarge">, C<"g3.4xlarge">, C<"g3.8xlarge">, C<"g3.16xlarge">, C<"cg1.4xlarge">, C<"p2.xlarge">, C<"p2.8xlarge">, C<"p2.16xlarge">, C<"p3.2xlarge">, C<"p3.8xlarge">, C<"p3.16xlarge">, C<"d2.xlarge">, C<"d2.2xlarge">, C<"d2.4xlarge">, C<"d2.8xlarge">, C<"f1.2xlarge">, C<"f1.16xlarge">, C<"m5.large">, C<"m5.xlarge">, C<"m5.2xlarge">, C<"m5.4xlarge">, C<"m5.12xlarge">, C<"m5.24xlarge">, C<"h1.2xlarge">, C<"h1.4xlarge">, C<"h1.8xlarge">, C<"h1.16xlarge">

=head2 Ipv6AddressCount => Int

[EC2-VPC] A number of IPv6 addresses to associate with the primary
network interface. Amazon EC2 chooses the IPv6 addresses from the range
of your subnet. You cannot specify this option and the option to assign
specific IPv6 addresses in the same request. You can specify this
option if you've specified a minimum number of instances to launch.



=head2 Ipv6Addresses => ArrayRef[L<Paws::EC2::InstanceIpv6Address>]

[EC2-VPC] Specify one or more IPv6 addresses from the range of the
subnet to associate with the primary network interface. You cannot
specify this option and the option to assign a number of IPv6 addresses
in the same request. You cannot specify this option if you've specified
a minimum number of instances to launch.



=head2 KernelId => Str

The ID of the kernel.

We recommend that you use PV-GRUB instead of kernels and RAM disks. For
more information, see PV-GRUB
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 KeyName => Str

The name of the key pair. You can create a key pair using CreateKeyPair
or ImportKeyPair.

If you do not specify a key pair, you can't connect to the instance
unless you choose an AMI that is configured to allow users another way
to log in.



=head2 LaunchTemplate => L<Paws::EC2::LaunchTemplateSpecification>

The launch template to use to launch the instances. Any parameters that
you specify in RunInstances override the same parameters in the launch
template. You can specify either the name or ID of a launch template,
but not both.



=head2 B<REQUIRED> MaxCount => Int

The maximum number of instances to launch. If you specify more
instances than Amazon EC2 can launch in the target Availability Zone,
Amazon EC2 launches the largest possible number of instances above
C<MinCount>.

Constraints: Between 1 and the maximum number you're allowed for the
specified instance type. For more information about the default limits,
and how to request an increase, see How many instances can I run in
Amazon EC2
(http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2)
in the Amazon EC2 FAQ.



=head2 B<REQUIRED> MinCount => Int

The minimum number of instances to launch. If you specify a minimum
that is more instances than Amazon EC2 can launch in the target
Availability Zone, Amazon EC2 launches no instances.

Constraints: Between 1 and the maximum number you're allowed for the
specified instance type. For more information about the default limits,
and how to request an increase, see How many instances can I run in
Amazon EC2
(http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2)
in the Amazon EC2 General FAQ.



=head2 Monitoring => L<Paws::EC2::RunInstancesMonitoringEnabled>

The monitoring for the instance.



=head2 NetworkInterfaces => ArrayRef[L<Paws::EC2::InstanceNetworkInterfaceSpecification>]

One or more network interfaces.



=head2 Placement => L<Paws::EC2::Placement>

The placement for the instance.



=head2 PrivateIpAddress => Str

[EC2-VPC] The primary IPv4 address. You must specify a value from the
IPv4 address range of the subnet.

Only one private IP address can be designated as primary. You can't
specify this option if you've specified the option to designate a
private IP address as the primary IP address in a network interface
specification. You cannot specify this option if you're launching more
than one instance in the request.



=head2 RamdiskId => Str

The ID of the RAM disk.

We recommend that you use PV-GRUB instead of kernels and RAM disks. For
more information, see PV-GRUB
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

One or more security group IDs. You can create a security group using
CreateSecurityGroup.

Default: Amazon EC2 uses the default security group.



=head2 SecurityGroups => ArrayRef[Str|Undef]

[EC2-Classic, default VPC] One or more security group names. For a
nondefault VPC, you must use security group IDs instead.

Default: Amazon EC2 uses the default security group.



=head2 SubnetId => Str

[EC2-VPC] The ID of the subnet to launch the instance into.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the resources during launch. You can tag instances
and volumes. The specified tags are applied to all instances or volumes
that are created during launch.



=head2 UserData => Str

The user data to make available to the instance. For more information,
see Running Commands on Your Linux Instance at Launch
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html)
(Linux) and Adding User Data
(http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html#instancedata-add-user-data)
(Windows). If you are using a command line tool, base64-encoding is
performed for you, and you can load the text from a file. Otherwise,
you must provide base64-encoded text.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RunInstances in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

