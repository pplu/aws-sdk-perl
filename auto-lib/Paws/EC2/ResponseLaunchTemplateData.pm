package Paws::EC2::ResponseLaunchTemplateData;
  use Moose;
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchTemplateBlockDeviceMapping]', request_name => 'blockDeviceMappingSet', traits => ['NameInRequest']);
  has CapacityReservationSpecification => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateCapacityReservationSpecificationResponse', request_name => 'capacityReservationSpecification', traits => ['NameInRequest']);
  has CpuOptions => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateCpuOptions', request_name => 'cpuOptions', traits => ['NameInRequest']);
  has CreditSpecification => (is => 'ro', isa => 'Paws::EC2::CreditSpecification', request_name => 'creditSpecification', traits => ['NameInRequest']);
  has DisableApiTermination => (is => 'ro', isa => 'Bool', request_name => 'disableApiTermination', traits => ['NameInRequest']);
  has EbsOptimized => (is => 'ro', isa => 'Bool', request_name => 'ebsOptimized', traits => ['NameInRequest']);
  has ElasticGpuSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ElasticGpuSpecificationResponse]', request_name => 'elasticGpuSpecificationSet', traits => ['NameInRequest']);
  has ElasticInferenceAccelerators => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchTemplateElasticInferenceAcceleratorResponse]', request_name => 'elasticInferenceAcceleratorSet', traits => ['NameInRequest']);
  has HibernationOptions => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateHibernationOptions', request_name => 'hibernationOptions', traits => ['NameInRequest']);
  has IamInstanceProfile => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateIamInstanceProfileSpecification', request_name => 'iamInstanceProfile', traits => ['NameInRequest']);
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest']);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Str', request_name => 'instanceInitiatedShutdownBehavior', traits => ['NameInRequest']);
  has InstanceMarketOptions => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateInstanceMarketOptions', request_name => 'instanceMarketOptions', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has KernelId => (is => 'ro', isa => 'Str', request_name => 'kernelId', traits => ['NameInRequest']);
  has KeyName => (is => 'ro', isa => 'Str', request_name => 'keyName', traits => ['NameInRequest']);
  has LicenseSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchTemplateLicenseConfiguration]', request_name => 'licenseSet', traits => ['NameInRequest']);
  has Monitoring => (is => 'ro', isa => 'Paws::EC2::LaunchTemplatesMonitoring', request_name => 'monitoring', traits => ['NameInRequest']);
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecification]', request_name => 'networkInterfaceSet', traits => ['NameInRequest']);
  has Placement => (is => 'ro', isa => 'Paws::EC2::LaunchTemplatePlacement', request_name => 'placement', traits => ['NameInRequest']);
  has RamDiskId => (is => 'ro', isa => 'Str', request_name => 'ramDiskId', traits => ['NameInRequest']);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroupIdSet', traits => ['NameInRequest']);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroupSet', traits => ['NameInRequest']);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchTemplateTagSpecification]', request_name => 'tagSpecificationSet', traits => ['NameInRequest']);
  has UserData => (is => 'ro', isa => 'Str', request_name => 'userData', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ResponseLaunchTemplateData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ResponseLaunchTemplateData object:

  $service_obj->Method(Att1 => { BlockDeviceMappings => $value, ..., UserData => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ResponseLaunchTemplateData object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockDeviceMappings

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::LaunchTemplateBlockDeviceMapping>]

  The block device mappings.


=head2 CapacityReservationSpecification => L<Paws::EC2::LaunchTemplateCapacityReservationSpecificationResponse>

  Information about the Capacity Reservation targeting option.


=head2 CpuOptions => L<Paws::EC2::LaunchTemplateCpuOptions>

  The CPU options for the instance. For more information, see Optimizing
CPU Options
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreditSpecification => L<Paws::EC2::CreditSpecification>

  The credit option for CPU usage of the instance.


=head2 DisableApiTermination => Bool

  If set to C<true>, indicates that the instance cannot be terminated
using the Amazon EC2 console, command line tool, or API.


=head2 EbsOptimized => Bool

  Indicates whether the instance is optimized for Amazon EBS I/O.


=head2 ElasticGpuSpecifications => ArrayRef[L<Paws::EC2::ElasticGpuSpecificationResponse>]

  The elastic GPU specification.


=head2 ElasticInferenceAccelerators => ArrayRef[L<Paws::EC2::LaunchTemplateElasticInferenceAcceleratorResponse>]

  The elastic inference accelerator for the instance.


=head2 HibernationOptions => L<Paws::EC2::LaunchTemplateHibernationOptions>

  Indicates whether an instance is configured for hibernation. For more
information, see Hibernate Your Instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in
the I<Amazon Elastic Compute Cloud User Guide>.


=head2 IamInstanceProfile => L<Paws::EC2::LaunchTemplateIamInstanceProfileSpecification>

  The IAM instance profile.


=head2 ImageId => Str

  The ID of the AMI that was used to launch the instance.


=head2 InstanceInitiatedShutdownBehavior => Str

  Indicates whether an instance stops or terminates when you initiate
shutdown from the instance (using the operating system command for
system shutdown).


=head2 InstanceMarketOptions => L<Paws::EC2::LaunchTemplateInstanceMarketOptions>

  The market (purchasing) option for the instances.


=head2 InstanceType => Str

  The instance type.


=head2 KernelId => Str

  The ID of the kernel, if applicable.


=head2 KeyName => Str

  The name of the key pair.


=head2 LicenseSpecifications => ArrayRef[L<Paws::EC2::LaunchTemplateLicenseConfiguration>]

  The license configurations.


=head2 Monitoring => L<Paws::EC2::LaunchTemplatesMonitoring>

  The monitoring for the instance.


=head2 NetworkInterfaces => ArrayRef[L<Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecification>]

  The network interfaces.


=head2 Placement => L<Paws::EC2::LaunchTemplatePlacement>

  The placement of the instance.


=head2 RamDiskId => Str

  The ID of the RAM disk, if applicable.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  The security group IDs.


=head2 SecurityGroups => ArrayRef[Str|Undef]

  The security group names.


=head2 TagSpecifications => ArrayRef[L<Paws::EC2::LaunchTemplateTagSpecification>]

  The tags.


=head2 UserData => Str

  The user data for the instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
