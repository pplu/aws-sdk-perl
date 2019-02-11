
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
      {
        'IamInstanceProfile'      => 'my-iam-role',
        'ImageId'                 => 'ami-12345678',
        'InstanceType'            => 'm3.medium',
        'LaunchConfigurationName' => 'my-launch-config',
        'SecurityGroups'          => ['sg-eb2af88e']
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/CreateLaunchConfiguration>

=head1 ATTRIBUTES


=head2 AssociatePublicIpAddress => Bool

Used for groups that launch instances into a virtual private cloud
(VPC). Specifies whether to assign a public IP address to each
instance. For more information, see Launching Auto Scaling Instances in
a VPC
(http://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

If you specify this parameter, be sure to specify at least one subnet
when you create your group.

Default: If the instance is launched into a default subnet, the default
is to assign a public IP address. If the instance is launched into a
nondefault subnet, the default is not to assign a public IP address.



=head2 BlockDeviceMappings => ArrayRef[L<Paws::AutoScaling::BlockDeviceMapping>]

One or more mappings that specify how block devices are exposed to the
instance. For more information, see Block Device Mapping
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 ClassicLinkVPCId => Str

The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances
to. This parameter is supported only if you are launching EC2-Classic
instances. For more information, see ClassicLink
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 ClassicLinkVPCSecurityGroups => ArrayRef[Str|Undef]

The IDs of one or more security groups for the specified
ClassicLink-enabled VPC. This parameter is required if you specify a
ClassicLink-enabled VPC, and is not supported otherwise. For more
information, see ClassicLink
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 EbsOptimized => Bool

Indicates whether the instance is optimized for Amazon EBS I/O. By
default, the instance is not optimized for EBS I/O. The optimization
provides dedicated throughput to Amazon EBS and an optimized
configuration stack to provide optimal I/O performance. This
optimization is not available with all instance types. Additional usage
charges apply. For more information, see Amazon EBS-Optimized Instances
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 IamInstanceProfile => Str

The name or the Amazon Resource Name (ARN) of the instance profile
associated with the IAM role for the instance.

EC2 instances launched with an IAM role automatically have AWS security
credentials available. You can use IAM roles with Amazon EC2 Auto
Scaling to automatically enable applications running on your EC2
instances to securely access other AWS resources. For more information,
see Launch Auto Scaling Instances with an IAM Role
(http://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 ImageId => Str

The ID of the Amazon Machine Image (AMI) to use to launch your EC2
instances.

If you do not specify C<InstanceId>, you must specify C<ImageId>.

For more information, see Finding an AMI
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 InstanceId => Str

The ID of the instance to use to create the launch configuration. The
new launch configuration derives attributes from the instance, except
for the block device mapping.

If you do not specify C<InstanceId>, you must specify both C<ImageId>
and C<InstanceType>.

To create a launch configuration with a block device mapping or
override any other instance attributes, specify them as part of the
same request.

For more information, see Create a Launch Configuration Using an EC2
Instance
(http://docs.aws.amazon.com/autoscaling/ec2/userguide/create-lc-with-instanceID.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 InstanceMonitoring => L<Paws::AutoScaling::InstanceMonitoring>

Enables detailed monitoring (C<true>) or basic monitoring (C<false>)
for the Auto Scaling instances. The default is C<true>.



=head2 InstanceType => Str

The instance type of the EC2 instance.

If you do not specify C<InstanceId>, you must specify C<InstanceType>.

For information about available instance types, see Available Instance
Types
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes)
in the I<Amazon Elastic Compute Cloud User Guide.>



=head2 KernelId => Str

The ID of the kernel associated with the AMI.



=head2 KeyName => Str

The name of the key pair. For more information, see Amazon EC2 Key
Pairs
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 B<REQUIRED> LaunchConfigurationName => Str

The name of the launch configuration. This name must be unique within
the scope of your AWS account.



=head2 PlacementTenancy => Str

The tenancy of the instance. An instance with a tenancy of C<dedicated>
runs on single-tenant hardware and can only be launched into a VPC.

To launch Dedicated Instances into a shared tenancy VPC (a VPC with the
instance placement tenancy attribute set to C<default>), you must set
the value of this parameter to C<dedicated>.

If you specify this parameter, be sure to specify at least one subnet
when you create your group.

For more information, see Launching Auto Scaling Instances in a VPC
(http://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

Valid values: C<default> | C<dedicated>



=head2 RamdiskId => Str

The ID of the RAM disk associated with the AMI.



=head2 SecurityGroups => ArrayRef[Str|Undef]

One or more security groups with which to associate the instances.

If your instances are launched in EC2-Classic, you can either specify
security group names or the security group IDs. For more information,
see Amazon EC2 Security Groups
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

If your instances are launched into a VPC, specify security group IDs.
For more information, see Security Groups for Your VPC
(http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html)
in the I<Amazon Virtual Private Cloud User Guide>.



=head2 SpotPrice => Str

The maximum hourly price to be paid for any Spot Instance launched to
fulfill the request. Spot Instances are launched when the price you
specify exceeds the current Spot market price. For more information,
see Launching Spot Instances in Your Auto Scaling Group
(http://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-spot-instances.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 UserData => Str

The user data to make available to the launched EC2 instances. For more
information, see Instance Metadata and User Data
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html)
in the I<Amazon Elastic Compute Cloud User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLaunchConfiguration in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

