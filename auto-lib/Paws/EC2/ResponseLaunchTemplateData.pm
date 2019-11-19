package Paws::EC2::ResponseLaunchTemplateData;
  use Moo;  use Types::Standard qw/ArrayRef Bool Str Undef/;
  use Paws::EC2::Types qw/EC2_LaunchTemplateInstanceNetworkInterfaceSpecification EC2_LaunchTemplateElasticInferenceAcceleratorResponse EC2_LaunchTemplatePlacement EC2_LaunchTemplateTagSpecification EC2_LaunchTemplateHibernationOptions EC2_LaunchTemplateInstanceMarketOptions EC2_LaunchTemplateCapacityReservationSpecificationResponse EC2_CreditSpecification EC2_LaunchTemplateBlockDeviceMapping EC2_LaunchTemplateLicenseConfiguration EC2_LaunchTemplateIamInstanceProfileSpecification EC2_LaunchTemplatesMonitoring EC2_LaunchTemplateCpuOptions EC2_ElasticGpuSpecificationResponse/;
  has BlockDeviceMappings => (is => 'ro', isa => ArrayRef[EC2_LaunchTemplateBlockDeviceMapping]);
  has CapacityReservationSpecification => (is => 'ro', isa => EC2_LaunchTemplateCapacityReservationSpecificationResponse);
  has CpuOptions => (is => 'ro', isa => EC2_LaunchTemplateCpuOptions);
  has CreditSpecification => (is => 'ro', isa => EC2_CreditSpecification);
  has DisableApiTermination => (is => 'ro', isa => Bool);
  has EbsOptimized => (is => 'ro', isa => Bool);
  has ElasticGpuSpecifications => (is => 'ro', isa => ArrayRef[EC2_ElasticGpuSpecificationResponse]);
  has ElasticInferenceAccelerators => (is => 'ro', isa => ArrayRef[EC2_LaunchTemplateElasticInferenceAcceleratorResponse]);
  has HibernationOptions => (is => 'ro', isa => EC2_LaunchTemplateHibernationOptions);
  has IamInstanceProfile => (is => 'ro', isa => EC2_LaunchTemplateIamInstanceProfileSpecification);
  has ImageId => (is => 'ro', isa => Str);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => Str);
  has InstanceMarketOptions => (is => 'ro', isa => EC2_LaunchTemplateInstanceMarketOptions);
  has InstanceType => (is => 'ro', isa => Str);
  has KernelId => (is => 'ro', isa => Str);
  has KeyName => (is => 'ro', isa => Str);
  has LicenseSpecifications => (is => 'ro', isa => ArrayRef[EC2_LaunchTemplateLicenseConfiguration]);
  has Monitoring => (is => 'ro', isa => EC2_LaunchTemplatesMonitoring);
  has NetworkInterfaces => (is => 'ro', isa => ArrayRef[EC2_LaunchTemplateInstanceNetworkInterfaceSpecification]);
  has Placement => (is => 'ro', isa => EC2_LaunchTemplatePlacement);
  has RamDiskId => (is => 'ro', isa => Str);
  has SecurityGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has TagSpecifications => (is => 'ro', isa => ArrayRef[EC2_LaunchTemplateTagSpecification]);
  has UserData => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Monitoring' => {
                                 'class' => 'Paws::EC2::LaunchTemplatesMonitoring',
                                 'type' => 'EC2_LaunchTemplatesMonitoring'
                               },
               'InstanceInitiatedShutdownBehavior' => {
                                                        'type' => 'Str'
                                                      },
               'KernelId' => {
                               'type' => 'Str'
                             },
               'RamDiskId' => {
                                'type' => 'Str'
                              },
               'SecurityGroupIds' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'DisableApiTermination' => {
                                            'type' => 'Bool'
                                          },
               'ElasticGpuSpecifications' => {
                                               'class' => 'Paws::EC2::ElasticGpuSpecificationResponse',
                                               'type' => 'ArrayRef[EC2_ElasticGpuSpecificationResponse]'
                                             },
               'KeyName' => {
                              'type' => 'Str'
                            },
               'UserData' => {
                               'type' => 'Str'
                             },
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   },
               'EbsOptimized' => {
                                   'type' => 'Bool'
                                 },
               'CpuOptions' => {
                                 'type' => 'EC2_LaunchTemplateCpuOptions',
                                 'class' => 'Paws::EC2::LaunchTemplateCpuOptions'
                               },
               'InstanceMarketOptions' => {
                                            'type' => 'EC2_LaunchTemplateInstanceMarketOptions',
                                            'class' => 'Paws::EC2::LaunchTemplateInstanceMarketOptions'
                                          },
               'IamInstanceProfile' => {
                                         'class' => 'Paws::EC2::LaunchTemplateIamInstanceProfileSpecification',
                                         'type' => 'EC2_LaunchTemplateIamInstanceProfileSpecification'
                                       },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'ElasticInferenceAccelerators' => {
                                                   'type' => 'ArrayRef[EC2_LaunchTemplateElasticInferenceAcceleratorResponse]',
                                                   'class' => 'Paws::EC2::LaunchTemplateElasticInferenceAcceleratorResponse'
                                                 },
               'TagSpecifications' => {
                                        'type' => 'ArrayRef[EC2_LaunchTemplateTagSpecification]',
                                        'class' => 'Paws::EC2::LaunchTemplateTagSpecification'
                                      },
               'LicenseSpecifications' => {
                                            'type' => 'ArrayRef[EC2_LaunchTemplateLicenseConfiguration]',
                                            'class' => 'Paws::EC2::LaunchTemplateLicenseConfiguration'
                                          },
               'HibernationOptions' => {
                                         'class' => 'Paws::EC2::LaunchTemplateHibernationOptions',
                                         'type' => 'EC2_LaunchTemplateHibernationOptions'
                                       },
               'NetworkInterfaces' => {
                                        'type' => 'ArrayRef[EC2_LaunchTemplateInstanceNetworkInterfaceSpecification]',
                                        'class' => 'Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecification'
                                      },
               'ImageId' => {
                              'type' => 'Str'
                            },
               'BlockDeviceMappings' => {
                                          'class' => 'Paws::EC2::LaunchTemplateBlockDeviceMapping',
                                          'type' => 'ArrayRef[EC2_LaunchTemplateBlockDeviceMapping]'
                                        },
               'Placement' => {
                                'type' => 'EC2_LaunchTemplatePlacement',
                                'class' => 'Paws::EC2::LaunchTemplatePlacement'
                              },
               'CreditSpecification' => {
                                          'type' => 'EC2_CreditSpecification',
                                          'class' => 'Paws::EC2::CreditSpecification'
                                        },
               'CapacityReservationSpecification' => {
                                                       'class' => 'Paws::EC2::LaunchTemplateCapacityReservationSpecificationResponse',
                                                       'type' => 'EC2_LaunchTemplateCapacityReservationSpecificationResponse'
                                                     }
             },
  'NameInRequest' => {
                       'LicenseSpecifications' => 'licenseSet',
                       'TagSpecifications' => 'tagSpecificationSet',
                       'ElasticInferenceAccelerators' => 'elasticInferenceAcceleratorSet',
                       'IamInstanceProfile' => 'iamInstanceProfile',
                       'InstanceType' => 'instanceType',
                       'CreditSpecification' => 'creditSpecification',
                       'CapacityReservationSpecification' => 'capacityReservationSpecification',
                       'Placement' => 'placement',
                       'BlockDeviceMappings' => 'blockDeviceMappingSet',
                       'ImageId' => 'imageId',
                       'NetworkInterfaces' => 'networkInterfaceSet',
                       'HibernationOptions' => 'hibernationOptions',
                       'SecurityGroupIds' => 'securityGroupIdSet',
                       'DisableApiTermination' => 'disableApiTermination',
                       'RamDiskId' => 'ramDiskId',
                       'InstanceInitiatedShutdownBehavior' => 'instanceInitiatedShutdownBehavior',
                       'KernelId' => 'kernelId',
                       'Monitoring' => 'monitoring',
                       'InstanceMarketOptions' => 'instanceMarketOptions',
                       'CpuOptions' => 'cpuOptions',
                       'EbsOptimized' => 'ebsOptimized',
                       'UserData' => 'userData',
                       'SecurityGroups' => 'securityGroupSet',
                       'ElasticGpuSpecifications' => 'elasticGpuSpecificationSet',
                       'KeyName' => 'keyName'
                     }
}
;
    return $Params_map;
  }

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


=head2 BlockDeviceMappings => ArrayRef[EC2_LaunchTemplateBlockDeviceMapping]

  The block device mappings.


=head2 CapacityReservationSpecification => EC2_LaunchTemplateCapacityReservationSpecificationResponse

  Information about the Capacity Reservation targeting option.


=head2 CpuOptions => EC2_LaunchTemplateCpuOptions

  The CPU options for the instance. For more information, see Optimizing
CPU Options
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreditSpecification => EC2_CreditSpecification

  The credit option for CPU usage of the instance.


=head2 DisableApiTermination => Bool

  If set to C<true>, indicates that the instance cannot be terminated
using the Amazon EC2 console, command line tool, or API.


=head2 EbsOptimized => Bool

  Indicates whether the instance is optimized for Amazon EBS I/O.


=head2 ElasticGpuSpecifications => ArrayRef[EC2_ElasticGpuSpecificationResponse]

  The elastic GPU specification.


=head2 ElasticInferenceAccelerators => ArrayRef[EC2_LaunchTemplateElasticInferenceAcceleratorResponse]

  The elastic inference accelerator for the instance.


=head2 HibernationOptions => EC2_LaunchTemplateHibernationOptions

  Indicates whether an instance is configured for hibernation. For more
information, see Hibernate Your Instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in
the I<Amazon Elastic Compute Cloud User Guide>.


=head2 IamInstanceProfile => EC2_LaunchTemplateIamInstanceProfileSpecification

  The IAM instance profile.


=head2 ImageId => Str

  The ID of the AMI that was used to launch the instance.


=head2 InstanceInitiatedShutdownBehavior => Str

  Indicates whether an instance stops or terminates when you initiate
shutdown from the instance (using the operating system command for
system shutdown).


=head2 InstanceMarketOptions => EC2_LaunchTemplateInstanceMarketOptions

  The market (purchasing) option for the instances.


=head2 InstanceType => Str

  The instance type.


=head2 KernelId => Str

  The ID of the kernel, if applicable.


=head2 KeyName => Str

  The name of the key pair.


=head2 LicenseSpecifications => ArrayRef[EC2_LaunchTemplateLicenseConfiguration]

  The license configurations.


=head2 Monitoring => EC2_LaunchTemplatesMonitoring

  The monitoring for the instance.


=head2 NetworkInterfaces => ArrayRef[EC2_LaunchTemplateInstanceNetworkInterfaceSpecification]

  The network interfaces.


=head2 Placement => EC2_LaunchTemplatePlacement

  The placement of the instance.


=head2 RamDiskId => Str

  The ID of the RAM disk, if applicable.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  The security group IDs.


=head2 SecurityGroups => ArrayRef[Str|Undef]

  The security group names.


=head2 TagSpecifications => ArrayRef[EC2_LaunchTemplateTagSpecification]

  The tags.


=head2 UserData => Str

  The user data for the instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
