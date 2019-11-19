package Paws::EC2::RequestLaunchTemplateData;
  use Moo;  use Types::Standard qw/ArrayRef Bool Str Undef/;
  use Paws::EC2::Types qw/EC2_LaunchTemplateElasticInferenceAccelerator EC2_LaunchTemplateBlockDeviceMappingRequest EC2_LaunchTemplateIamInstanceProfileSpecificationRequest EC2_ElasticGpuSpecification EC2_LaunchTemplateCpuOptionsRequest EC2_LaunchTemplateHibernationOptionsRequest EC2_LaunchTemplateInstanceNetworkInterfaceSpecificationRequest EC2_LaunchTemplatePlacementRequest EC2_LaunchTemplateTagSpecificationRequest EC2_LaunchTemplatesMonitoringRequest EC2_LaunchTemplateInstanceMarketOptionsRequest EC2_CreditSpecificationRequest EC2_LaunchTemplateLicenseConfigurationRequest EC2_LaunchTemplateCapacityReservationSpecificationRequest/;
  has BlockDeviceMappings => (is => 'ro', isa => ArrayRef[EC2_LaunchTemplateBlockDeviceMappingRequest]);
  has CapacityReservationSpecification => (is => 'ro', isa => EC2_LaunchTemplateCapacityReservationSpecificationRequest);
  has CpuOptions => (is => 'ro', isa => EC2_LaunchTemplateCpuOptionsRequest);
  has CreditSpecification => (is => 'ro', isa => EC2_CreditSpecificationRequest);
  has DisableApiTermination => (is => 'ro', isa => Bool);
  has EbsOptimized => (is => 'ro', isa => Bool);
  has ElasticGpuSpecifications => (is => 'ro', isa => ArrayRef[EC2_ElasticGpuSpecification]);
  has ElasticInferenceAccelerators => (is => 'ro', isa => ArrayRef[EC2_LaunchTemplateElasticInferenceAccelerator]);
  has HibernationOptions => (is => 'ro', isa => EC2_LaunchTemplateHibernationOptionsRequest);
  has IamInstanceProfile => (is => 'ro', isa => EC2_LaunchTemplateIamInstanceProfileSpecificationRequest);
  has ImageId => (is => 'ro', isa => Str);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => Str);
  has InstanceMarketOptions => (is => 'ro', isa => EC2_LaunchTemplateInstanceMarketOptionsRequest);
  has InstanceType => (is => 'ro', isa => Str);
  has KernelId => (is => 'ro', isa => Str);
  has KeyName => (is => 'ro', isa => Str);
  has LicenseSpecifications => (is => 'ro', isa => ArrayRef[EC2_LaunchTemplateLicenseConfigurationRequest]);
  has Monitoring => (is => 'ro', isa => EC2_LaunchTemplatesMonitoringRequest);
  has NetworkInterfaces => (is => 'ro', isa => ArrayRef[EC2_LaunchTemplateInstanceNetworkInterfaceSpecificationRequest]);
  has Placement => (is => 'ro', isa => EC2_LaunchTemplatePlacementRequest);
  has RamDiskId => (is => 'ro', isa => Str);
  has SecurityGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has TagSpecifications => (is => 'ro', isa => ArrayRef[EC2_LaunchTemplateTagSpecificationRequest]);
  has UserData => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SecurityGroups' => 'SecurityGroup',
                       'ElasticGpuSpecifications' => 'ElasticGpuSpecification',
                       'SecurityGroupIds' => 'SecurityGroupId',
                       'BlockDeviceMappings' => 'BlockDeviceMapping',
                       'NetworkInterfaces' => 'NetworkInterface',
                       'ElasticInferenceAccelerators' => 'ElasticInferenceAccelerator',
                       'LicenseSpecifications' => 'LicenseSpecification',
                       'TagSpecifications' => 'TagSpecification'
                     },
  'types' => {
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   },
               'UserData' => {
                               'type' => 'Str'
                             },
               'KeyName' => {
                              'type' => 'Str'
                            },
               'ElasticGpuSpecifications' => {
                                               'class' => 'Paws::EC2::ElasticGpuSpecification',
                                               'type' => 'ArrayRef[EC2_ElasticGpuSpecification]'
                                             },
               'InstanceMarketOptions' => {
                                            'class' => 'Paws::EC2::LaunchTemplateInstanceMarketOptionsRequest',
                                            'type' => 'EC2_LaunchTemplateInstanceMarketOptionsRequest'
                                          },
               'CpuOptions' => {
                                 'class' => 'Paws::EC2::LaunchTemplateCpuOptionsRequest',
                                 'type' => 'EC2_LaunchTemplateCpuOptionsRequest'
                               },
               'EbsOptimized' => {
                                   'type' => 'Bool'
                                 },
               'DisableApiTermination' => {
                                            'type' => 'Bool'
                                          },
               'SecurityGroupIds' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'RamDiskId' => {
                                'type' => 'Str'
                              },
               'InstanceInitiatedShutdownBehavior' => {
                                                        'type' => 'Str'
                                                      },
               'KernelId' => {
                               'type' => 'Str'
                             },
               'Monitoring' => {
                                 'class' => 'Paws::EC2::LaunchTemplatesMonitoringRequest',
                                 'type' => 'EC2_LaunchTemplatesMonitoringRequest'
                               },
               'BlockDeviceMappings' => {
                                          'type' => 'ArrayRef[EC2_LaunchTemplateBlockDeviceMappingRequest]',
                                          'class' => 'Paws::EC2::LaunchTemplateBlockDeviceMappingRequest'
                                        },
               'ImageId' => {
                              'type' => 'Str'
                            },
               'NetworkInterfaces' => {
                                        'type' => 'ArrayRef[EC2_LaunchTemplateInstanceNetworkInterfaceSpecificationRequest]',
                                        'class' => 'Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest'
                                      },
               'HibernationOptions' => {
                                         'class' => 'Paws::EC2::LaunchTemplateHibernationOptionsRequest',
                                         'type' => 'EC2_LaunchTemplateHibernationOptionsRequest'
                                       },
               'CapacityReservationSpecification' => {
                                                       'class' => 'Paws::EC2::LaunchTemplateCapacityReservationSpecificationRequest',
                                                       'type' => 'EC2_LaunchTemplateCapacityReservationSpecificationRequest'
                                                     },
               'CreditSpecification' => {
                                          'class' => 'Paws::EC2::CreditSpecificationRequest',
                                          'type' => 'EC2_CreditSpecificationRequest'
                                        },
               'Placement' => {
                                'class' => 'Paws::EC2::LaunchTemplatePlacementRequest',
                                'type' => 'EC2_LaunchTemplatePlacementRequest'
                              },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'IamInstanceProfile' => {
                                         'type' => 'EC2_LaunchTemplateIamInstanceProfileSpecificationRequest',
                                         'class' => 'Paws::EC2::LaunchTemplateIamInstanceProfileSpecificationRequest'
                                       },
               'LicenseSpecifications' => {
                                            'type' => 'ArrayRef[EC2_LaunchTemplateLicenseConfigurationRequest]',
                                            'class' => 'Paws::EC2::LaunchTemplateLicenseConfigurationRequest'
                                          },
               'TagSpecifications' => {
                                        'class' => 'Paws::EC2::LaunchTemplateTagSpecificationRequest',
                                        'type' => 'ArrayRef[EC2_LaunchTemplateTagSpecificationRequest]'
                                      },
               'ElasticInferenceAccelerators' => {
                                                   'type' => 'ArrayRef[EC2_LaunchTemplateElasticInferenceAccelerator]',
                                                   'class' => 'Paws::EC2::LaunchTemplateElasticInferenceAccelerator'
                                                 }
             }
}
;
    return $Params_map;
  }

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


=head2 BlockDeviceMappings => ArrayRef[EC2_LaunchTemplateBlockDeviceMappingRequest]

  The block device mapping.

Supplying both a snapshot ID and an encryption value as arguments for
block-device mapping results in an error. This is because only blank
volumes can be encrypted on start, and these are not created from a
snapshot. If a snapshot is the basis for the volume, it contains data
by definition and its encryption status cannot be changed using this
action.


=head2 CapacityReservationSpecification => EC2_LaunchTemplateCapacityReservationSpecificationRequest

  The Capacity Reservation targeting option. If you do not specify this
parameter, the instance's Capacity Reservation preference defaults to
C<open>, which enables it to run in any open Capacity Reservation that
has matching attributes (instance type, platform, Availability Zone).


=head2 CpuOptions => EC2_LaunchTemplateCpuOptionsRequest

  The CPU options for the instance. For more information, see Optimizing
CPU Options
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreditSpecification => EC2_CreditSpecificationRequest

  The credit option for CPU usage of the instance. Valid for T2 or T3
instances only.


=head2 DisableApiTermination => Bool

  If you set this parameter to C<true>, you can't terminate the instance
using the Amazon EC2 console, CLI, or API; otherwise, you can. To
change this attribute after launch, use ModifyInstanceAttribute
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceAttribute.html).
Alternatively, if you set C<InstanceInitiatedShutdownBehavior> to
C<terminate>, you can terminate the instance by running the shutdown
command from the instance.


=head2 EbsOptimized => Bool

  Indicates whether the instance is optimized for Amazon EBS I/O. This
optimization provides dedicated throughput to Amazon EBS and an
optimized configuration stack to provide optimal Amazon EBS I/O
performance. This optimization isn't available with all instance types.
Additional usage charges apply when using an EBS-optimized instance.


=head2 ElasticGpuSpecifications => ArrayRef[EC2_ElasticGpuSpecification]

  An elastic GPU to associate with the instance.


=head2 ElasticInferenceAccelerators => ArrayRef[EC2_LaunchTemplateElasticInferenceAccelerator]

  The elastic inference accelerator for the instance.


=head2 HibernationOptions => EC2_LaunchTemplateHibernationOptionsRequest

  Indicates whether an instance is enabled for hibernation. This
parameter is valid only if the instance meets the hibernation
prerequisites
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#hibernating-prerequisites).
For more information, see Hibernate Your Instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in
the I<Amazon Elastic Compute Cloud User Guide>.


=head2 IamInstanceProfile => EC2_LaunchTemplateIamInstanceProfileSpecificationRequest

  The IAM instance profile.


=head2 ImageId => Str

  The ID of the AMI.


=head2 InstanceInitiatedShutdownBehavior => Str

  Indicates whether an instance stops or terminates when you initiate
shutdown from the instance (using the operating system command for
system shutdown).

Default: C<stop>


=head2 InstanceMarketOptions => EC2_LaunchTemplateInstanceMarketOptionsRequest

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
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateKeyPair.html)
or ImportKeyPair
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportKeyPair.html).

If you do not specify a key pair, you can't connect to the instance
unless you choose an AMI that is configured to allow users another way
to log in.


=head2 LicenseSpecifications => ArrayRef[EC2_LaunchTemplateLicenseConfigurationRequest]

  The license configurations.


=head2 Monitoring => EC2_LaunchTemplatesMonitoringRequest

  The monitoring for the instance.


=head2 NetworkInterfaces => ArrayRef[EC2_LaunchTemplateInstanceNetworkInterfaceSpecificationRequest]

  One or more network interfaces. If you specify a network interface, you
must specify any security groups and subnets as part of the network
interface.


=head2 Placement => EC2_LaunchTemplatePlacementRequest

  The placement for the instance.


=head2 RamDiskId => Str

  The ID of the RAM disk.

We recommend that you use PV-GRUB instead of kernels and RAM disks. For
more information, see User Provided Kernels
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  One or more security group IDs. You can create a security group using
CreateSecurityGroup
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSecurityGroup.html).
You cannot specify both a security group ID and security name in the
same request.


=head2 SecurityGroups => ArrayRef[Str|Undef]

  [EC2-Classic, default VPC] One or more security group names. For a
nondefault VPC, you must use security group IDs instead. You cannot
specify both a security group ID and security name in the same request.


=head2 TagSpecifications => ArrayRef[EC2_LaunchTemplateTagSpecificationRequest]

  The tags to apply to the resources during launch. You can only tag
instances and volumes on launch. The specified tags are applied to all
instances or volumes that are created during launch. To tag a resource
after it has been created, see CreateTags
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html).


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
