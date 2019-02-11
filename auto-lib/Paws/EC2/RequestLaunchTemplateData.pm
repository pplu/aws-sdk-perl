package Paws::EC2::RequestLaunchTemplateData;
  use Moose;
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchTemplateBlockDeviceMappingRequest]', request_name => 'BlockDeviceMapping', traits => ['NameInRequest']);
  has CapacityReservationSpecification => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateCapacityReservationSpecificationRequest');
  has CpuOptions => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateCpuOptionsRequest');
  has CreditSpecification => (is => 'ro', isa => 'Paws::EC2::CreditSpecificationRequest');
  has DisableApiTermination => (is => 'ro', isa => 'Bool');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has ElasticGpuSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ElasticGpuSpecification]', request_name => 'ElasticGpuSpecification', traits => ['NameInRequest']);
  has ElasticInferenceAccelerators => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchTemplateElasticInferenceAccelerator]', request_name => 'ElasticInferenceAccelerator', traits => ['NameInRequest']);
  has HibernationOptions => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateHibernationOptionsRequest');
  has IamInstanceProfile => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateIamInstanceProfileSpecificationRequest');
  has ImageId => (is => 'ro', isa => 'Str');
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Str');
  has InstanceMarketOptions => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateInstanceMarketOptionsRequest');
  has InstanceType => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has LicenseSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchTemplateLicenseConfigurationRequest]', request_name => 'LicenseSpecification', traits => ['NameInRequest']);
  has Monitoring => (is => 'ro', isa => 'Paws::EC2::LaunchTemplatesMonitoringRequest');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest]', request_name => 'NetworkInterface', traits => ['NameInRequest']);
  has Placement => (is => 'ro', isa => 'Paws::EC2::LaunchTemplatePlacementRequest');
  has RamDiskId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'SecurityGroupId', traits => ['NameInRequest']);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'SecurityGroup', traits => ['NameInRequest']);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchTemplateTagSpecificationRequest]', request_name => 'TagSpecification', traits => ['NameInRequest']);
  has UserData => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RequestLaunchTemplateData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::RequestLaunchTemplateData object:

  $service_obj->Method(Att1 => { BlockDeviceMappings => $value, ..., UserData => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::RequestLaunchTemplateData object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockDeviceMappings

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::LaunchTemplateBlockDeviceMappingRequest>]

  The block device mapping.

Supplying both a snapshot ID and an encryption value as arguments for
block-device mapping results in an error. This is because only blank
volumes can be encrypted on start, and these are not created from a
snapshot. If a snapshot is the basis for the volume, it contains data
by definition and its encryption status cannot be changed using this
action.


=head2 CapacityReservationSpecification => L<Paws::EC2::LaunchTemplateCapacityReservationSpecificationRequest>

  The Capacity Reservation targeting option. If you do not specify this
parameter, the instance's Capacity Reservation preference defaults to
C<open>, which enables it to run in any open Capacity Reservation that
has matching attributes (instance type, platform, Availability Zone).


=head2 CpuOptions => L<Paws::EC2::LaunchTemplateCpuOptionsRequest>

  The CPU options for the instance. For more information, see Optimizing
CPU Options
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreditSpecification => L<Paws::EC2::CreditSpecificationRequest>

  The credit option for CPU usage of the instance. Valid for T2 or T3
instances only.


=head2 DisableApiTermination => Bool

  If set to C<true>, you can't terminate the instance using the Amazon
EC2 console, CLI, or API. To change this attribute to C<false> after
launch, use ModifyInstanceAttribute.


=head2 EbsOptimized => Bool

  Indicates whether the instance is optimized for Amazon EBS I/O. This
optimization provides dedicated throughput to Amazon EBS and an
optimized configuration stack to provide optimal Amazon EBS I/O
performance. This optimization isn't available with all instance types.
Additional usage charges apply when using an EBS-optimized instance.


=head2 ElasticGpuSpecifications => ArrayRef[L<Paws::EC2::ElasticGpuSpecification>]

  An elastic GPU to associate with the instance.


=head2 ElasticInferenceAccelerators => ArrayRef[L<Paws::EC2::LaunchTemplateElasticInferenceAccelerator>]

  The elastic inference accelerator for the instance.


=head2 HibernationOptions => L<Paws::EC2::LaunchTemplateHibernationOptionsRequest>

  Indicates whether an instance is enabled for hibernation. This
parameter is valid only if the instance meets the hibernation
prerequisites
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#hibernating-prerequisites).
Hibernation is currently supported only for Amazon Linux. For more
information, see Hibernate Your Instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in
the I<Amazon Elastic Compute Cloud User Guide>.


=head2 IamInstanceProfile => L<Paws::EC2::LaunchTemplateIamInstanceProfileSpecificationRequest>

  The IAM instance profile.


=head2 ImageId => Str

  The ID of the AMI, which you can get by using DescribeImages.


=head2 InstanceInitiatedShutdownBehavior => Str

  Indicates whether an instance stops or terminates when you initiate
shutdown from the instance (using the operating system command for
system shutdown).

Default: C<stop>


=head2 InstanceMarketOptions => L<Paws::EC2::LaunchTemplateInstanceMarketOptionsRequest>

  The market (purchasing) option for the instances.


=head2 InstanceType => Str

  The instance type. For more information, see Instance Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 KernelId => Str

  The ID of the kernel.

We recommend that you use PV-GRUB instead of kernels and RAM disks. For
more information, see User Provided Kernels
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 KeyName => Str

  The name of the key pair. You can create a key pair using CreateKeyPair
or ImportKeyPair.

If you do not specify a key pair, you can't connect to the instance
unless you choose an AMI that is configured to allow users another way
to log in.


=head2 LicenseSpecifications => ArrayRef[L<Paws::EC2::LaunchTemplateLicenseConfigurationRequest>]

  The license configurations.


=head2 Monitoring => L<Paws::EC2::LaunchTemplatesMonitoringRequest>

  The monitoring for the instance.


=head2 NetworkInterfaces => ArrayRef[L<Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest>]

  One or more network interfaces.


=head2 Placement => L<Paws::EC2::LaunchTemplatePlacementRequest>

  The placement for the instance.


=head2 RamDiskId => Str

  The ID of the RAM disk.

We recommend that you use PV-GRUB instead of kernels and RAM disks. For
more information, see User Provided Kernels
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  One or more security group IDs. You can create a security group using
CreateSecurityGroup. You cannot specify both a security group ID and
security name in the same request.


=head2 SecurityGroups => ArrayRef[Str|Undef]

  [EC2-Classic, default VPC] One or more security group names. For a
nondefault VPC, you must use security group IDs instead. You cannot
specify both a security group ID and security name in the same request.


=head2 TagSpecifications => ArrayRef[L<Paws::EC2::LaunchTemplateTagSpecificationRequest>]

  The tags to apply to the resources during launch. You can only tag
instances and volumes on launch. The specified tags are applied to all
instances or volumes that are created during launch. To tag a resource
after it has been created, see CreateTags.


=head2 UserData => Str

  The Base64-encoded user data to make available to the instance. For
more information, see Running Commands on Your Linux Instance at Launch
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html)
(Linux) and Adding User Data
(https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html#instancedata-add-user-data)
(Windows).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
