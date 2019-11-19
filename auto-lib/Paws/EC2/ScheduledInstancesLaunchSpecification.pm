package Paws::EC2::ScheduledInstancesLaunchSpecification;
  use Moo;  use Types::Standard qw/ArrayRef Bool Str Undef/;
  use Paws::EC2::Types qw/EC2_ScheduledInstancesIamInstanceProfile EC2_ScheduledInstancesPlacement EC2_ScheduledInstancesBlockDeviceMapping EC2_ScheduledInstancesMonitoring EC2_ScheduledInstancesNetworkInterface/;
  has BlockDeviceMappings => (is => 'ro', isa => ArrayRef[EC2_ScheduledInstancesBlockDeviceMapping]);
  has EbsOptimized => (is => 'ro', isa => Bool);
  has IamInstanceProfile => (is => 'ro', isa => EC2_ScheduledInstancesIamInstanceProfile);
  has ImageId => (is => 'ro', isa => Str, required => 1);
  has InstanceType => (is => 'ro', isa => Str);
  has KernelId => (is => 'ro', isa => Str);
  has KeyName => (is => 'ro', isa => Str);
  has Monitoring => (is => 'ro', isa => EC2_ScheduledInstancesMonitoring);
  has NetworkInterfaces => (is => 'ro', isa => ArrayRef[EC2_ScheduledInstancesNetworkInterface]);
  has Placement => (is => 'ro', isa => EC2_ScheduledInstancesPlacement);
  has RamdiskId => (is => 'ro', isa => Str);
  has SecurityGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SubnetId => (is => 'ro', isa => Str);
  has UserData => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Placement' => {
                                'class' => 'Paws::EC2::ScheduledInstancesPlacement',
                                'type' => 'EC2_ScheduledInstancesPlacement'
                              },
               'EbsOptimized' => {
                                   'type' => 'Bool'
                                 },
               'KeyName' => {
                              'type' => 'Str'
                            },
               'UserData' => {
                               'type' => 'Str'
                             },
               'NetworkInterfaces' => {
                                        'class' => 'Paws::EC2::ScheduledInstancesNetworkInterface',
                                        'type' => 'ArrayRef[EC2_ScheduledInstancesNetworkInterface]'
                                      },
               'SubnetId' => {
                               'type' => 'Str'
                             },
               'BlockDeviceMappings' => {
                                          'class' => 'Paws::EC2::ScheduledInstancesBlockDeviceMapping',
                                          'type' => 'ArrayRef[EC2_ScheduledInstancesBlockDeviceMapping]'
                                        },
               'ImageId' => {
                              'type' => 'Str'
                            },
               'RamdiskId' => {
                                'type' => 'Str'
                              },
               'Monitoring' => {
                                 'type' => 'EC2_ScheduledInstancesMonitoring',
                                 'class' => 'Paws::EC2::ScheduledInstancesMonitoring'
                               },
               'KernelId' => {
                               'type' => 'Str'
                             },
               'IamInstanceProfile' => {
                                         'class' => 'Paws::EC2::ScheduledInstancesIamInstanceProfile',
                                         'type' => 'EC2_ScheduledInstancesIamInstanceProfile'
                                       },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'SecurityGroupIds' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     }
             },
  'NameInRequest' => {
                       'BlockDeviceMappings' => 'BlockDeviceMapping',
                       'SecurityGroupIds' => 'SecurityGroupId',
                       'NetworkInterfaces' => 'NetworkInterface'
                     },
  'IsRequired' => {
                    'ImageId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ScheduledInstancesLaunchSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ScheduledInstancesLaunchSpecification object:

  $service_obj->Method(Att1 => { BlockDeviceMappings => $value, ..., UserData => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ScheduledInstancesLaunchSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockDeviceMappings

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BlockDeviceMappings => ArrayRef[EC2_ScheduledInstancesBlockDeviceMapping]

  The block device mapping entries.


=head2 EbsOptimized => Bool

  Indicates whether the instances are optimized for EBS I/O. This
optimization provides dedicated throughput to Amazon EBS and an
optimized configuration stack to provide optimal EBS I/O performance.
This optimization isn't available with all instance types. Additional
usage charges apply when using an EBS-optimized instance.

Default: C<false>


=head2 IamInstanceProfile => EC2_ScheduledInstancesIamInstanceProfile

  The IAM instance profile.


=head2 B<REQUIRED> ImageId => Str

  The ID of the Amazon Machine Image (AMI).


=head2 InstanceType => Str

  The instance type.


=head2 KernelId => Str

  The ID of the kernel.


=head2 KeyName => Str

  The name of the key pair.


=head2 Monitoring => EC2_ScheduledInstancesMonitoring

  Enable or disable monitoring for the instances.


=head2 NetworkInterfaces => ArrayRef[EC2_ScheduledInstancesNetworkInterface]

  The network interfaces.


=head2 Placement => EC2_ScheduledInstancesPlacement

  The placement information.


=head2 RamdiskId => Str

  The ID of the RAM disk.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  The IDs of the security groups.


=head2 SubnetId => Str

  The ID of the subnet in which to launch the instances.


=head2 UserData => Str

  The base64-encoded MIME user data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
