
package Paws::AutoScaling::CreateLaunchConfiguration;
  use Moose;
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::BlockDeviceMapping]');
  has ClassicLinkVPCId => (is => 'ro', isa => 'Str');
  has ClassicLinkVPCSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has IamInstanceProfile => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has InstanceMonitoring => (is => 'ro', isa => 'Paws::AutoScaling::InstanceMonitoring');
  has InstanceType => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has PlacementTenancy => (is => 'ro', isa => 'Str');
  has RamdiskId => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SpotPrice => (is => 'ro', isa => 'Str');
  has UserData => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLaunchConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::CreateLaunchConfiguration - Arguments for method CreateLaunchConfiguration on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLaunchConfiguration on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method CreateLaunchConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLaunchConfiguration.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To create a launch configuration
    # This example creates a launch configuration.
    $autoscaling->CreateLaunchConfiguration(
      'IamInstanceProfile'      => 'my-iam-role',
      'ImageId'                 => 'ami-12345678',
      'InstanceType'            => 'm3.medium',
      'LaunchConfigurationName' => 'my-launch-config',
      'SecurityGroups'          => ['sg-eb2af88e']
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/CreateLaunchConfiguration>

=head1 ATTRIBUTES


=head2 AssociatePublicIpAddress => Bool

For Auto Scaling groups that are running in a virtual private cloud
(VPC), specifies whether to assign a public IP address to the group's
instances. If you specify C<true>, each instance in the Auto Scaling
group receives a unique public IP address. For more information, see
Launching Auto Scaling Instances in a VPC
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

If you specify this parameter, you must specify at least one subnet for
C<VPCZoneIdentifier> when you create your group.

If the instance is launched into a default subnet, the default is to
assign a public IP address, unless you disabled the option to assign a
public IP address on the subnet. If the instance is launched into a
nondefault subnet, the default is not to assign a public IP address,
unless you enabled the option to assign a public IP address on the
subnet.



=head2 BlockDeviceMappings => ArrayRef[L<Paws::AutoScaling::BlockDeviceMapping>]

A block device mapping, which specifies the block devices for the
instance. You can specify virtual devices and EBS volumes. For more
information, see Block Device Mapping
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html)
in the I<Amazon EC2 User Guide for Linux Instances>.



=head2 ClassicLinkVPCId => Str

The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances
to. For more information, see ClassicLink
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html)
in the I<Amazon EC2 User Guide for Linux Instances> and Linking
EC2-Classic Instances to a VPC
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink)
in the I<Amazon EC2 Auto Scaling User Guide>.

This parameter can only be used if you are launching EC2-Classic
instances.



=head2 ClassicLinkVPCSecurityGroups => ArrayRef[Str|Undef]

The IDs of one or more security groups for the specified
ClassicLink-enabled VPC. For more information, see ClassicLink
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html)
in the I<Amazon EC2 User Guide for Linux Instances> and Linking
EC2-Classic Instances to a VPC
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink)
in the I<Amazon EC2 Auto Scaling User Guide>.

If you specify the C<ClassicLinkVPCId> parameter, you must specify this
parameter.



=head2 EbsOptimized => Bool

Specifies whether the launch configuration is optimized for EBS I/O
(C<true>) or not (C<false>). The optimization provides dedicated
throughput to Amazon EBS and an optimized configuration stack to
provide optimal I/O performance. This optimization is not available
with all instance types. Additional fees are incurred when you enable
EBS optimization for an instance type that is not EBS-optimized by
default. For more information, see Amazon EBS-Optimized Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html)
in the I<Amazon EC2 User Guide for Linux Instances>.

The default value is C<false>.



=head2 IamInstanceProfile => Str

The name or the Amazon Resource Name (ARN) of the instance profile
associated with the IAM role for the instance. The instance profile
contains the IAM role.

For more information, see IAM Role for Applications That Run on Amazon
EC2 Instances
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 ImageId => Str

The ID of the Amazon Machine Image (AMI) that was assigned during
registration. For more information, see Finding an AMI
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html)
in the I<Amazon EC2 User Guide for Linux Instances>.

If you do not specify C<InstanceId>, you must specify C<ImageId>.



=head2 InstanceId => Str

The ID of the instance to use to create the launch configuration. The
new launch configuration derives attributes from the instance, except
for the block device mapping.

To create a launch configuration with a block device mapping or
override any other instance attributes, specify them as part of the
same request.

For more information, see Create a Launch Configuration Using an EC2
Instance
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-lc-with-instanceID.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

If you do not specify C<InstanceId>, you must specify both C<ImageId>
and C<InstanceType>.



=head2 InstanceMonitoring => L<Paws::AutoScaling::InstanceMonitoring>

Controls whether instances in this group are launched with detailed
(C<true>) or basic (C<false>) monitoring.

The default value is C<true> (enabled).

When detailed monitoring is enabled, Amazon CloudWatch generates
metrics every minute and your account is charged a fee. When you
disable detailed monitoring, CloudWatch generates metrics every 5
minutes. For more information, see Configure Monitoring for Auto
Scaling Instances
(https://docs.aws.amazon.com/autoscaling/latest/userguide/as-instance-monitoring.html#enable-as-instance-metrics)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 InstanceType => Str

Specifies the instance type of the EC2 instance.

For information about available instance types, see Available Instance
Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes)
in the I<Amazon EC2 User Guide for Linux Instances.>

If you do not specify C<InstanceId>, you must specify C<InstanceType>.



=head2 KernelId => Str

The ID of the kernel associated with the AMI.



=head2 KeyName => Str

The name of the key pair. For more information, see Amazon EC2 Key
Pairs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
in the I<Amazon EC2 User Guide for Linux Instances>.



=head2 B<REQUIRED> LaunchConfigurationName => Str

The name of the launch configuration. This name must be unique per
Region per account.



=head2 PlacementTenancy => Str

The tenancy of the instance. An instance with C<dedicated> tenancy runs
on isolated, single-tenant hardware and can only be launched into a
VPC.

To launch dedicated instances into a shared tenancy VPC (a VPC with the
instance placement tenancy attribute set to C<default>), you must set
the value of this parameter to C<dedicated>.

If you specify C<PlacementTenancy>, you must specify at least one
subnet for C<VPCZoneIdentifier> when you create your group.

For more information, see Instance Placement Tenancy
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-vpc-tenancy)
in the I<Amazon EC2 Auto Scaling User Guide>.

Valid values: C<default> | C<dedicated>



=head2 RamdiskId => Str

The ID of the RAM disk to select.



=head2 SecurityGroups => ArrayRef[Str|Undef]

A list that contains the security groups to assign to the instances in
the Auto Scaling group.

[EC2-VPC] Specify the security group IDs. For more information, see
Security Groups for Your VPC
(https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html)
in the I<Amazon Virtual Private Cloud User Guide>.

[EC2-Classic] Specify either the security group names or the security
group IDs. For more information, see Amazon EC2 Security Groups
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html)
in the I<Amazon EC2 User Guide for Linux Instances>.



=head2 SpotPrice => Str

The maximum hourly price to be paid for any Spot Instance launched to
fulfill the request. Spot Instances are launched when the price you
specify exceeds the current Spot market price. For more information,
see Launching Spot Instances in Your Auto Scaling Group
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-spot-instances.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

If a Spot price is set, then the Auto Scaling group will only launch
instances when the Spot price has been met, regardless of the setting
in the Auto Scaling group's C<DesiredCapacity>.

When you change your Spot price by creating a new launch configuration,
running instances will continue to run as long as the Spot price for
those running instances is higher than the current Spot market price.



=head2 UserData => Str

The Base64-encoded user data to make available to the launched EC2
instances. For more information, see Instance Metadata and User Data
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html)
in the I<Amazon EC2 User Guide for Linux Instances>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLaunchConfiguration in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

