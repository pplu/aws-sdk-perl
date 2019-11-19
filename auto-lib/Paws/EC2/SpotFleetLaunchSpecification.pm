package Paws::EC2::SpotFleetLaunchSpecification;
  use Moo;  use Types::Standard qw/Str ArrayRef Bool Num/;
  use Paws::EC2::Types qw/EC2_IamInstanceProfileSpecification EC2_InstanceNetworkInterfaceSpecification EC2_GroupIdentifier EC2_SpotFleetTagSpecification EC2_SpotFleetMonitoring EC2_BlockDeviceMapping EC2_SpotPlacement/;
  has AddressingType => (is => 'ro', isa => Str);
  has BlockDeviceMappings => (is => 'ro', isa => ArrayRef[EC2_BlockDeviceMapping]);
  has EbsOptimized => (is => 'ro', isa => Bool);
  has IamInstanceProfile => (is => 'ro', isa => EC2_IamInstanceProfileSpecification);
  has ImageId => (is => 'ro', isa => Str);
  has InstanceType => (is => 'ro', isa => Str);
  has KernelId => (is => 'ro', isa => Str);
  has KeyName => (is => 'ro', isa => Str);
  has Monitoring => (is => 'ro', isa => EC2_SpotFleetMonitoring);
  has NetworkInterfaces => (is => 'ro', isa => ArrayRef[EC2_InstanceNetworkInterfaceSpecification]);
  has Placement => (is => 'ro', isa => EC2_SpotPlacement);
  has RamdiskId => (is => 'ro', isa => Str);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[EC2_GroupIdentifier]);
  has SpotPrice => (is => 'ro', isa => Str);
  has SubnetId => (is => 'ro', isa => Str);
  has TagSpecifications => (is => 'ro', isa => ArrayRef[EC2_SpotFleetTagSpecification]);
  has UserData => (is => 'ro', isa => Str);
  has WeightedCapacity => (is => 'ro', isa => Num);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WeightedCapacity' => {
                                       'type' => 'Num'
                                     },
               'RamdiskId' => {
                                'type' => 'Str'
                              },
               'TagSpecifications' => {
                                        'class' => 'Paws::EC2::SpotFleetTagSpecification',
                                        'type' => 'ArrayRef[EC2_SpotFleetTagSpecification]'
                                      },
               'KernelId' => {
                               'type' => 'Str'
                             },
               'Monitoring' => {
                                 'class' => 'Paws::EC2::SpotFleetMonitoring',
                                 'type' => 'EC2_SpotFleetMonitoring'
                               },
               'AddressingType' => {
                                     'type' => 'Str'
                                   },
               'IamInstanceProfile' => {
                                         'class' => 'Paws::EC2::IamInstanceProfileSpecification',
                                         'type' => 'EC2_IamInstanceProfileSpecification'
                                       },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'EbsOptimized' => {
                                   'type' => 'Bool'
                                 },
               'SpotPrice' => {
                                'type' => 'Str'
                              },
               'Placement' => {
                                'type' => 'EC2_SpotPlacement',
                                'class' => 'Paws::EC2::SpotPlacement'
                              },
               'UserData' => {
                               'type' => 'Str'
                             },
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[EC2_GroupIdentifier]',
                                     'class' => 'Paws::EC2::GroupIdentifier'
                                   },
               'KeyName' => {
                              'type' => 'Str'
                            },
               'SubnetId' => {
                               'type' => 'Str'
                             },
               'BlockDeviceMappings' => {
                                          'type' => 'ArrayRef[EC2_BlockDeviceMapping]',
                                          'class' => 'Paws::EC2::BlockDeviceMapping'
                                        },
               'ImageId' => {
                              'type' => 'Str'
                            },
               'NetworkInterfaces' => {
                                        'type' => 'ArrayRef[EC2_InstanceNetworkInterfaceSpecification]',
                                        'class' => 'Paws::EC2::InstanceNetworkInterfaceSpecification'
                                      }
             },
  'NameInRequest' => {
                       'RamdiskId' => 'ramdiskId',
                       'WeightedCapacity' => 'weightedCapacity',
                       'TagSpecifications' => 'tagSpecificationSet',
                       'KernelId' => 'kernelId',
                       'Monitoring' => 'monitoring',
                       'AddressingType' => 'addressingType',
                       'InstanceType' => 'instanceType',
                       'IamInstanceProfile' => 'iamInstanceProfile',
                       'EbsOptimized' => 'ebsOptimized',
                       'SpotPrice' => 'spotPrice',
                       'Placement' => 'placement',
                       'UserData' => 'userData',
                       'SecurityGroups' => 'groupSet',
                       'KeyName' => 'keyName',
                       'ImageId' => 'imageId',
                       'SubnetId' => 'subnetId',
                       'BlockDeviceMappings' => 'blockDeviceMapping',
                       'NetworkInterfaces' => 'networkInterfaceSet'
                     }
}
;
    return $Params_map;
  }

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


=head2 BlockDeviceMappings => ArrayRef[EC2_BlockDeviceMapping]

  One or more block devices that are mapped to the Spot Instances. You
can't specify both a snapshot ID and an encryption value. This is
because only blank volumes can be encrypted on creation. If a snapshot
is the basis for a volume, it is not blank and its encryption status is
used for the volume encryption status.


=head2 EbsOptimized => Bool

  Indicates whether the instances are optimized for EBS I/O. This
optimization provides dedicated throughput to Amazon EBS and an
optimized configuration stack to provide optimal EBS I/O performance.
This optimization isn't available with all instance types. Additional
usage charges apply when using an EBS Optimized instance.

Default: C<false>


=head2 IamInstanceProfile => EC2_IamInstanceProfileSpecification

  The IAM instance profile.


=head2 ImageId => Str

  The ID of the AMI.


=head2 InstanceType => Str

  The instance type.


=head2 KernelId => Str

  The ID of the kernel.


=head2 KeyName => Str

  The name of the key pair.


=head2 Monitoring => EC2_SpotFleetMonitoring

  Enable or disable monitoring for the instances.


=head2 NetworkInterfaces => ArrayRef[EC2_InstanceNetworkInterfaceSpecification]

  One or more network interfaces. If you specify a network interface, you
must specify subnet IDs and security group IDs using the network
interface.


=head2 Placement => EC2_SpotPlacement

  The placement information.


=head2 RamdiskId => Str

  The ID of the RAM disk. Some kernels require additional drivers at
launch. Check the kernel requirements for information about whether you
need to specify a RAM disk. To find kernel requirements, refer to the
AWS Resource Center and search for the kernel ID.


=head2 SecurityGroups => ArrayRef[EC2_GroupIdentifier]

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

  The IDs of the subnets in which to launch the instances. To specify
multiple subnets, separate them using commas; for example,
"subnet-1234abcdeexample1, subnet-0987cdef6example2".


=head2 TagSpecifications => ArrayRef[EC2_SpotFleetTagSpecification]

  The tags to apply during creation.


=head2 UserData => Str

  The Base64-encoded user data that instances use when starting up.


=head2 WeightedCapacity => Num

  The number of units provided by the specified instance type. These are
the same units that you chose to set the target capacity in terms of
instances, or a performance characteristic such as vCPUs, memory, or
I/O.

If the target capacity divided by this value is not a whole number,
Amazon EC2 rounds the number of instances to the next whole number. If
this value is not specified, the default is 1.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
