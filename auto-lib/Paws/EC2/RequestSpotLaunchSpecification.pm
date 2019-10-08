package Paws::EC2::RequestSpotLaunchSpecification;
  use Moo;  use Types::Standard qw/Str ArrayRef Bool Undef/;
  use Paws::EC2::Types qw/EC2_RunInstancesMonitoringEnabled EC2_SpotPlacement EC2_IamInstanceProfileSpecification EC2_InstanceNetworkInterfaceSpecification EC2_BlockDeviceMapping/;
  has AddressingType => (is => 'ro', isa => Str);
  has BlockDeviceMappings => (is => 'ro', isa => ArrayRef[EC2_BlockDeviceMapping]);
  has EbsOptimized => (is => 'ro', isa => Bool);
  has IamInstanceProfile => (is => 'ro', isa => EC2_IamInstanceProfileSpecification);
  has ImageId => (is => 'ro', isa => Str);
  has InstanceType => (is => 'ro', isa => Str);
  has KernelId => (is => 'ro', isa => Str);
  has KeyName => (is => 'ro', isa => Str);
  has Monitoring => (is => 'ro', isa => EC2_RunInstancesMonitoringEnabled);
  has NetworkInterfaces => (is => 'ro', isa => ArrayRef[EC2_InstanceNetworkInterfaceSpecification]);
  has Placement => (is => 'ro', isa => EC2_SpotPlacement);
  has RamdiskId => (is => 'ro', isa => Str);
  has SecurityGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SubnetId => (is => 'ro', isa => Str);
  has UserData => (is => 'ro', isa => Str);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'ImageId' => {
                              'type' => 'Str'
                            },
               'KernelId' => {
                               'type' => 'Str'
                             },
               'SecurityGroupIds' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'KeyName' => {
                              'type' => 'Str'
                            },
               'Placement' => {
                                'class' => 'Paws::EC2::SpotPlacement',
                                'type' => 'EC2_SpotPlacement'
                              },
               'Monitoring' => {
                                 'class' => 'Paws::EC2::RunInstancesMonitoringEnabled',
                                 'type' => 'EC2_RunInstancesMonitoringEnabled'
                               },
               'EbsOptimized' => {
                                   'type' => 'Bool'
                                 },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'UserData' => {
                               'type' => 'Str'
                             },
               'RamdiskId' => {
                                'type' => 'Str'
                              },
               'NetworkInterfaces' => {
                                        'class' => 'Paws::EC2::InstanceNetworkInterfaceSpecification',
                                        'type' => 'ArrayRef[EC2_InstanceNetworkInterfaceSpecification]'
                                      },
               'SubnetId' => {
                               'type' => 'Str'
                             },
               'BlockDeviceMappings' => {
                                          'class' => 'Paws::EC2::BlockDeviceMapping',
                                          'type' => 'ArrayRef[EC2_BlockDeviceMapping]'
                                        },
               'AddressingType' => {
                                     'type' => 'Str'
                                   },
               'IamInstanceProfile' => {
                                         'class' => 'Paws::EC2::IamInstanceProfileSpecification',
                                         'type' => 'EC2_IamInstanceProfileSpecification'
                                       },
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   }
             },
  'NameInRequest' => {
                       'ImageId' => 'imageId',
                       'KernelId' => 'kernelId',
                       'SecurityGroupIds' => 'SecurityGroupId',
                       'KeyName' => 'keyName',
                       'Placement' => 'placement',
                       'Monitoring' => 'monitoring',
                       'EbsOptimized' => 'ebsOptimized',
                       'InstanceType' => 'instanceType',
                       'UserData' => 'userData',
                       'RamdiskId' => 'ramdiskId',
                       'NetworkInterfaces' => 'NetworkInterface',
                       'SubnetId' => 'subnetId',
                       'BlockDeviceMappings' => 'blockDeviceMapping',
                       'AddressingType' => 'addressingType',
                       'IamInstanceProfile' => 'iamInstanceProfile',
                       'SecurityGroups' => 'SecurityGroup'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RequestSpotLaunchSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::RequestSpotLaunchSpecification object:

  $service_obj->Method(Att1 => { AddressingType => $value, ..., UserData => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::RequestSpotLaunchSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressingType

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AddressingType => Str

  Deprecated.


=head2 BlockDeviceMappings => ArrayRef[EC2_BlockDeviceMapping]

  One or more block device mapping entries. You can't specify both a
snapshot ID and an encryption value. This is because only blank volumes
can be encrypted on creation. If a snapshot is the basis for a volume,
it is not blank and its encryption status is used for the volume
encryption status.


=head2 EbsOptimized => Bool

  Indicates whether the instance is optimized for EBS I/O. This
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


=head2 Monitoring => EC2_RunInstancesMonitoringEnabled

  Indicates whether basic or detailed monitoring is enabled for the
instance.

Default: Disabled


=head2 NetworkInterfaces => ArrayRef[EC2_InstanceNetworkInterfaceSpecification]

  One or more network interfaces. If you specify a network interface, you
must specify subnet IDs and security group IDs using the network
interface.


=head2 Placement => EC2_SpotPlacement

  The placement information for the instance.


=head2 RamdiskId => Str

  The ID of the RAM disk.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  One or more security group IDs.


=head2 SecurityGroups => ArrayRef[Str|Undef]

  One or more security groups. When requesting instances in a VPC, you
must specify the IDs of the security groups. When requesting instances
in EC2-Classic, you can specify the names or the IDs of the security
groups.


=head2 SubnetId => Str

  The ID of the subnet in which to launch the instance.


=head2 UserData => Str

  The Base64-encoded user data for the instance. User data is limited to
16 KB.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
