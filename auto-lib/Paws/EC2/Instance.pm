package Paws::EC2::Instance;
  use Moo;  use Types::Standard qw/Int Str ArrayRef Bool/;
  use Paws::EC2::Types qw/EC2_StateReason EC2_ElasticGpuAssociation EC2_InstanceState EC2_LicenseConfiguration EC2_InstanceBlockDeviceMapping EC2_HibernationOptions EC2_ProductCode EC2_CpuOptions EC2_Tag EC2_CapacityReservationSpecificationResponse EC2_InstanceNetworkInterface EC2_IamInstanceProfile EC2_InstanceMetadataOptionsResponse EC2_GroupIdentifier EC2_Placement EC2_Monitoring EC2_ElasticInferenceAcceleratorAssociation/;
  has AmiLaunchIndex => (is => 'ro', isa => Int);
  has Architecture => (is => 'ro', isa => Str);
  has BlockDeviceMappings => (is => 'ro', isa => ArrayRef[EC2_InstanceBlockDeviceMapping]);
  has CapacityReservationId => (is => 'ro', isa => Str);
  has CapacityReservationSpecification => (is => 'ro', isa => EC2_CapacityReservationSpecificationResponse);
  has ClientToken => (is => 'ro', isa => Str);
  has CpuOptions => (is => 'ro', isa => EC2_CpuOptions);
  has EbsOptimized => (is => 'ro', isa => Bool);
  has ElasticGpuAssociations => (is => 'ro', isa => ArrayRef[EC2_ElasticGpuAssociation]);
  has ElasticInferenceAcceleratorAssociations => (is => 'ro', isa => ArrayRef[EC2_ElasticInferenceAcceleratorAssociation]);
  has EnaSupport => (is => 'ro', isa => Bool);
  has HibernationOptions => (is => 'ro', isa => EC2_HibernationOptions);
  has Hypervisor => (is => 'ro', isa => Str);
  has IamInstanceProfile => (is => 'ro', isa => EC2_IamInstanceProfile);
  has ImageId => (is => 'ro', isa => Str);
  has InstanceId => (is => 'ro', isa => Str);
  has InstanceLifecycle => (is => 'ro', isa => Str);
  has InstanceType => (is => 'ro', isa => Str);
  has KernelId => (is => 'ro', isa => Str);
  has KeyName => (is => 'ro', isa => Str);
  has LaunchTime => (is => 'ro', isa => Str);
  has Licenses => (is => 'ro', isa => ArrayRef[EC2_LicenseConfiguration]);
  has MetadataOptions => (is => 'ro', isa => EC2_InstanceMetadataOptionsResponse);
  has Monitoring => (is => 'ro', isa => EC2_Monitoring);
  has NetworkInterfaces => (is => 'ro', isa => ArrayRef[EC2_InstanceNetworkInterface]);
  has Placement => (is => 'ro', isa => EC2_Placement);
  has Platform => (is => 'ro', isa => Str);
  has PrivateDnsName => (is => 'ro', isa => Str);
  has PrivateIpAddress => (is => 'ro', isa => Str);
  has ProductCodes => (is => 'ro', isa => ArrayRef[EC2_ProductCode]);
  has PublicDnsName => (is => 'ro', isa => Str);
  has PublicIpAddress => (is => 'ro', isa => Str);
  has RamdiskId => (is => 'ro', isa => Str);
  has RootDeviceName => (is => 'ro', isa => Str);
  has RootDeviceType => (is => 'ro', isa => Str);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[EC2_GroupIdentifier]);
  has SourceDestCheck => (is => 'ro', isa => Bool);
  has SpotInstanceRequestId => (is => 'ro', isa => Str);
  has SriovNetSupport => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => EC2_InstanceState);
  has StateReason => (is => 'ro', isa => EC2_StateReason);
  has StateTransitionReason => (is => 'ro', isa => Str);
  has SubnetId => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has VirtualizationType => (is => 'ro', isa => Str);
  has VpcId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'EbsOptimized' => 'ebsOptimized',
                       'SriovNetSupport' => 'sriovNetSupport',
                       'CpuOptions' => 'cpuOptions',
                       'ProductCodes' => 'productCodes',
                       'SubnetId' => 'subnetId',
                       'StateTransitionReason' => 'reason',
                       'Tags' => 'tagSet',
                       'RamdiskId' => 'ramdiskId',
                       'Monitoring' => 'monitoring',
                       'SourceDestCheck' => 'sourceDestCheck',
                       'PublicIpAddress' => 'ipAddress',
                       'Placement' => 'placement',
                       'ElasticInferenceAcceleratorAssociations' => 'elasticInferenceAcceleratorAssociationSet',
                       'InstanceLifecycle' => 'instanceLifecycle',
                       'PrivateDnsName' => 'privateDnsName',
                       'ImageId' => 'imageId',
                       'NetworkInterfaces' => 'networkInterfaceSet',
                       'SpotInstanceRequestId' => 'spotInstanceRequestId',
                       'VirtualizationType' => 'virtualizationType',
                       'State' => 'instanceState',
                       'InstanceType' => 'instanceType',
                       'Licenses' => 'licenseSet',
                       'SecurityGroups' => 'groupSet',
                       'RootDeviceName' => 'rootDeviceName',
                       'KeyName' => 'keyName',
                       'LaunchTime' => 'launchTime',
                       'StateReason' => 'stateReason',
                       'ElasticGpuAssociations' => 'elasticGpuAssociationSet',
                       'ClientToken' => 'clientToken',
                       'KernelId' => 'kernelId',
                       'Platform' => 'platform',
                       'CapacityReservationSpecification' => 'capacityReservationSpecification',
                       'PrivateIpAddress' => 'privateIpAddress',
                       'HibernationOptions' => 'hibernationOptions',
                       'Architecture' => 'architecture',
                       'MetadataOptions' => 'metadataOptions',
                       'VpcId' => 'vpcId',
                       'BlockDeviceMappings' => 'blockDeviceMapping',
                       'CapacityReservationId' => 'capacityReservationId',
                       'EnaSupport' => 'enaSupport',
                       'InstanceId' => 'instanceId',
                       'AmiLaunchIndex' => 'amiLaunchIndex',
                       'PublicDnsName' => 'dnsName',
                       'Hypervisor' => 'hypervisor',
                       'RootDeviceType' => 'rootDeviceType',
                       'IamInstanceProfile' => 'iamInstanceProfile'
                     },
  'types' => {
               'MetadataOptions' => {
                                      'type' => 'EC2_InstanceMetadataOptionsResponse',
                                      'class' => 'Paws::EC2::InstanceMetadataOptionsResponse'
                                    },
               'BlockDeviceMappings' => {
                                          'type' => 'ArrayRef[EC2_InstanceBlockDeviceMapping]',
                                          'class' => 'Paws::EC2::InstanceBlockDeviceMapping'
                                        },
               'VpcId' => {
                            'type' => 'Str'
                          },
               'CapacityReservationId' => {
                                            'type' => 'Str'
                                          },
               'EnaSupport' => {
                                 'type' => 'Bool'
                               },
               'HibernationOptions' => {
                                         'type' => 'EC2_HibernationOptions',
                                         'class' => 'Paws::EC2::HibernationOptions'
                                       },
               'Architecture' => {
                                   'type' => 'Str'
                                 },
               'PrivateIpAddress' => {
                                       'type' => 'Str'
                                     },
               'CapacityReservationSpecification' => {
                                                       'type' => 'EC2_CapacityReservationSpecificationResponse',
                                                       'class' => 'Paws::EC2::CapacityReservationSpecificationResponse'
                                                     },
               'RootDeviceType' => {
                                     'type' => 'Str'
                                   },
               'IamInstanceProfile' => {
                                         'type' => 'EC2_IamInstanceProfile',
                                         'class' => 'Paws::EC2::IamInstanceProfile'
                                       },
               'Hypervisor' => {
                                 'type' => 'Str'
                               },
               'PublicDnsName' => {
                                    'type' => 'Str'
                                  },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'AmiLaunchIndex' => {
                                     'type' => 'Int'
                                   },
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[EC2_GroupIdentifier]',
                                     'class' => 'Paws::EC2::GroupIdentifier'
                                   },
               'RootDeviceName' => {
                                     'type' => 'Str'
                                   },
               'KeyName' => {
                              'type' => 'Str'
                            },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'KernelId' => {
                               'type' => 'Str'
                             },
               'Platform' => {
                               'type' => 'Str'
                             },
               'StateReason' => {
                                  'class' => 'Paws::EC2::StateReason',
                                  'type' => 'EC2_StateReason'
                                },
               'ElasticGpuAssociations' => {
                                             'class' => 'Paws::EC2::ElasticGpuAssociation',
                                             'type' => 'ArrayRef[EC2_ElasticGpuAssociation]'
                                           },
               'LaunchTime' => {
                                 'type' => 'Str'
                               },
               'ImageId' => {
                              'type' => 'Str'
                            },
               'NetworkInterfaces' => {
                                        'class' => 'Paws::EC2::InstanceNetworkInterface',
                                        'type' => 'ArrayRef[EC2_InstanceNetworkInterface]'
                                      },
               'PrivateDnsName' => {
                                     'type' => 'Str'
                                   },
               'InstanceLifecycle' => {
                                        'type' => 'Str'
                                      },
               'Placement' => {
                                'class' => 'Paws::EC2::Placement',
                                'type' => 'EC2_Placement'
                              },
               'ElasticInferenceAcceleratorAssociations' => {
                                                              'type' => 'ArrayRef[EC2_ElasticInferenceAcceleratorAssociation]',
                                                              'class' => 'Paws::EC2::ElasticInferenceAcceleratorAssociation'
                                                            },
               'Licenses' => {
                               'class' => 'Paws::EC2::LicenseConfiguration',
                               'type' => 'ArrayRef[EC2_LicenseConfiguration]'
                             },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'State' => {
                            'type' => 'EC2_InstanceState',
                            'class' => 'Paws::EC2::InstanceState'
                          },
               'SpotInstanceRequestId' => {
                                            'type' => 'Str'
                                          },
               'VirtualizationType' => {
                                         'type' => 'Str'
                                       },
               'StateTransitionReason' => {
                                            'type' => 'Str'
                                          },
               'SubnetId' => {
                               'type' => 'Str'
                             },
               'Tags' => {
                           'type' => 'ArrayRef[EC2_Tag]',
                           'class' => 'Paws::EC2::Tag'
                         },
               'CpuOptions' => {
                                 'type' => 'EC2_CpuOptions',
                                 'class' => 'Paws::EC2::CpuOptions'
                               },
               'ProductCodes' => {
                                   'class' => 'Paws::EC2::ProductCode',
                                   'type' => 'ArrayRef[EC2_ProductCode]'
                                 },
               'EbsOptimized' => {
                                   'type' => 'Bool'
                                 },
               'SriovNetSupport' => {
                                      'type' => 'Str'
                                    },
               'SourceDestCheck' => {
                                      'type' => 'Bool'
                                    },
               'PublicIpAddress' => {
                                      'type' => 'Str'
                                    },
               'Monitoring' => {
                                 'class' => 'Paws::EC2::Monitoring',
                                 'type' => 'EC2_Monitoring'
                               },
               'RamdiskId' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

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


=head2 BlockDeviceMappings => ArrayRef[EC2_InstanceBlockDeviceMapping]

  Any block device mapping entries for the instance.


=head2 CapacityReservationId => Str

  The ID of the Capacity Reservation.


=head2 CapacityReservationSpecification => EC2_CapacityReservationSpecificationResponse

  Information about the Capacity Reservation targeting option.


=head2 ClientToken => Str

  The idempotency token you provided when you launched the instance, if
applicable.


=head2 CpuOptions => EC2_CpuOptions

  The CPU options for the instance.


=head2 EbsOptimized => Bool

  Indicates whether the instance is optimized for Amazon EBS I/O. This
optimization provides dedicated throughput to Amazon EBS and an
optimized configuration stack to provide optimal I/O performance. This
optimization isn't available with all instance types. Additional usage
charges apply when using an EBS Optimized instance.


=head2 ElasticGpuAssociations => ArrayRef[EC2_ElasticGpuAssociation]

  The Elastic GPU associated with the instance.


=head2 ElasticInferenceAcceleratorAssociations => ArrayRef[EC2_ElasticInferenceAcceleratorAssociation]

  The elastic inference accelerator associated with the instance.


=head2 EnaSupport => Bool

  Specifies whether enhanced networking with ENA is enabled.


=head2 HibernationOptions => EC2_HibernationOptions

  Indicates whether the instance is enabled for hibernation.


=head2 Hypervisor => Str

  The hypervisor type of the instance.


=head2 IamInstanceProfile => EC2_IamInstanceProfile

  The IAM instance profile associated with the instance, if applicable.


=head2 ImageId => Str

  The ID of the AMI used to launch the instance.


=head2 InstanceId => Str

  The ID of the instance.


=head2 InstanceLifecycle => Str

  Indicates whether this is a Spot Instance or a Scheduled Instance.


=head2 InstanceType => Str

  The instance type.


=head2 KernelId => Str

  The kernel associated with this instance, if applicable.


=head2 KeyName => Str

  The name of the key pair, if this instance was launched with an
associated key pair.


=head2 LaunchTime => Str

  The time the instance was launched.


=head2 Licenses => ArrayRef[EC2_LicenseConfiguration]

  The license configurations.


=head2 MetadataOptions => EC2_InstanceMetadataOptionsResponse

  The metadata options for the instance.


=head2 Monitoring => EC2_Monitoring

  The monitoring for the instance.


=head2 NetworkInterfaces => ArrayRef[EC2_InstanceNetworkInterface]

  [EC2-VPC] The network interfaces for the instance.


=head2 Placement => EC2_Placement

  The location where the instance launched, if applicable.


=head2 Platform => Str

  The value is C<Windows> for Windows instances; otherwise blank.


=head2 PrivateDnsName => Str

  (IPv4 only) The private DNS hostname name assigned to the instance.
This DNS hostname can only be used inside the Amazon EC2 network. This
name is not available until the instance enters the C<running> state.

[EC2-VPC] The Amazon-provided DNS server resolves Amazon-provided
private DNS hostnames if you've enabled DNS resolution and DNS
hostnames in your VPC. If you are not using the Amazon-provided DNS
server in your VPC, your custom domain name servers must resolve the
hostname as appropriate.


=head2 PrivateIpAddress => Str

  The private IPv4 address assigned to the instance.


=head2 ProductCodes => ArrayRef[EC2_ProductCode]

  The product codes attached to this instance, if applicable.


=head2 PublicDnsName => Str

  (IPv4 only) The public DNS name assigned to the instance. This name is
not available until the instance enters the C<running> state. For
EC2-VPC, this name is only available if you've enabled DNS hostnames
for your VPC.


=head2 PublicIpAddress => Str

  The public IPv4 address assigned to the instance, if applicable.


=head2 RamdiskId => Str

  The RAM disk associated with this instance, if applicable.


=head2 RootDeviceName => Str

  The device name of the root device volume (for example, C</dev/sda1>).


=head2 RootDeviceType => Str

  The root device type used by the AMI. The AMI can use an EBS volume or
an instance store volume.


=head2 SecurityGroups => ArrayRef[EC2_GroupIdentifier]

  The security groups for the instance.


=head2 SourceDestCheck => Bool

  Specifies whether to enable an instance launched in a VPC to perform
NAT. This controls whether source/destination checking is enabled on
the instance. A value of C<true> means that checking is enabled, and
C<false> means that checking is disabled. The value must be C<false>
for the instance to perform NAT. For more information, see NAT
Instances
(https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html)
in the I<Amazon Virtual Private Cloud User Guide>.


=head2 SpotInstanceRequestId => Str

  If the request is a Spot Instance request, the ID of the request.


=head2 SriovNetSupport => Str

  Specifies whether enhanced networking with the Intel 82599 Virtual
Function interface is enabled.


=head2 State => EC2_InstanceState

  The current state of the instance.


=head2 StateReason => EC2_StateReason

  The reason for the most recent state transition.


=head2 StateTransitionReason => Str

  The reason for the most recent state transition. This might be an empty
string.


=head2 SubnetId => Str

  [EC2-VPC] The ID of the subnet in which the instance is running.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the instance.


=head2 VirtualizationType => Str

  The virtualization type of the instance.


=head2 VpcId => Str

  [EC2-VPC] The ID of the VPC in which the instance is running.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
