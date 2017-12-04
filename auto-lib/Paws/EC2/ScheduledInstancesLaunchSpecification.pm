package Paws::EC2::ScheduledInstancesLaunchSpecification;
  use Moose;
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ScheduledInstancesBlockDeviceMapping]', request_name => 'BlockDeviceMapping', traits => ['NameInRequest']);
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has IamInstanceProfile => (is => 'ro', isa => 'Paws::EC2::ScheduledInstancesIamInstanceProfile');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has Monitoring => (is => 'ro', isa => 'Paws::EC2::ScheduledInstancesMonitoring');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ScheduledInstancesNetworkInterface]', request_name => 'NetworkInterface', traits => ['NameInRequest']);
  has Placement => (is => 'ro', isa => 'Paws::EC2::ScheduledInstancesPlacement');
  has RamdiskId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'SecurityGroupId', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str');
  has UserData => (is => 'ro', isa => 'Str');
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


=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::ScheduledInstancesBlockDeviceMapping>]

  One or more block device mapping entries.


=head2 EbsOptimized => Bool

  Indicates whether the instances are optimized for EBS I/O. This
optimization provides dedicated throughput to Amazon EBS and an
optimized configuration stack to provide optimal EBS I/O performance.
This optimization isn't available with all instance types. Additional
usage charges apply when using an EBS-optimized instance.

Default: C<false>


=head2 IamInstanceProfile => L<Paws::EC2::ScheduledInstancesIamInstanceProfile>

  The IAM instance profile.


=head2 B<REQUIRED> ImageId => Str

  The ID of the Amazon Machine Image (AMI).


=head2 InstanceType => Str

  The instance type.


=head2 KernelId => Str

  The ID of the kernel.


=head2 KeyName => Str

  The name of the key pair.


=head2 Monitoring => L<Paws::EC2::ScheduledInstancesMonitoring>

  Enable or disable monitoring for the instances.


=head2 NetworkInterfaces => ArrayRef[L<Paws::EC2::ScheduledInstancesNetworkInterface>]

  One or more network interfaces.


=head2 Placement => L<Paws::EC2::ScheduledInstancesPlacement>

  The placement information.


=head2 RamdiskId => Str

  The ID of the RAM disk.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  The IDs of one or more security groups.


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
