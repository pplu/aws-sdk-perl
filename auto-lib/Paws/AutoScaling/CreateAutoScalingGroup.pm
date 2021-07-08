
package Paws::AutoScaling::CreateAutoScalingGroup;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CapacityRebalance => (is => 'ro', isa => 'Bool');
  has Context => (is => 'ro', isa => 'Str');
  has DefaultCooldown => (is => 'ro', isa => 'Int');
  has DesiredCapacity => (is => 'ro', isa => 'Int');
  has HealthCheckGracePeriod => (is => 'ro', isa => 'Int');
  has HealthCheckType => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str');
  has LaunchTemplate => (is => 'ro', isa => 'Paws::AutoScaling::LaunchTemplateSpecification');
  has LifecycleHookSpecificationList => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::LifecycleHookSpecification]');
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxInstanceLifetime => (is => 'ro', isa => 'Int');
  has MaxSize => (is => 'ro', isa => 'Int', required => 1);
  has MinSize => (is => 'ro', isa => 'Int', required => 1);
  has MixedInstancesPolicy => (is => 'ro', isa => 'Paws::AutoScaling::MixedInstancesPolicy');
  has NewInstancesProtectedFromScaleIn => (is => 'ro', isa => 'Bool');
  has PlacementGroup => (is => 'ro', isa => 'Str');
  has ServiceLinkedRoleARN => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::Tag]');
  has TargetGroupARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TerminationPolicies => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VPCZoneIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAutoScalingGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::CreateAutoScalingGroup - Arguments for method CreateAutoScalingGroup on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAutoScalingGroup on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method CreateAutoScalingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAutoScalingGroup.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To create an Auto Scaling group
    # This example creates an Auto Scaling group.
    $autoscaling->CreateAutoScalingGroup(
      'AutoScalingGroupName' => 'my-auto-scaling-group',
      'LaunchTemplate'       => {
        'LaunchTemplateId' => 'lt-0a20c965061f64abc',
        'Version'          => '$Latest'
      },
      'MaxInstanceLifetime' => 2592000,
      'MaxSize'             => 3,
      'MinSize'             => 1,
      'VPCZoneIdentifier'   => 'subnet-057fa0918fEXAMPLE'
    );

  # To create an Auto Scaling group with an attached target group
  # This example creates an Auto Scaling group and attaches the specified target
  # group.
    $autoscaling->CreateAutoScalingGroup(
      'AutoScalingGroupName'   => 'my-auto-scaling-group',
      'HealthCheckGracePeriod' => 300,
      'HealthCheckType'        => 'ELB',
      'LaunchTemplate'         => {
        'LaunchTemplateId' => 'lt-0a20c965061f64abc',
        'Version'          => '$Default'
      },
      'MaxSize'         => 3,
      'MinSize'         => 1,
      'TargetGroupARNs' => [
'arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067'
      ],
      'VPCZoneIdentifier' => 'subnet-057fa0918fEXAMPLE, subnet-610acd08EXAMPLE'
    );

 # To create an Auto Scaling group with a mixed instances policy
 # This example creates an Auto Scaling group with a mixed instances policy. It
 # specifies the c5.large, c5a.large, and c6g.large instance types and defines a
 # different launch template for the c6g.large instance type.
    $autoscaling->CreateAutoScalingGroup(
      'AutoScalingGroupName' => 'my-asg',
      'DesiredCapacity'      => 3,
      'MaxSize'              => 5,
      'MinSize'              => 1,
      'MixedInstancesPolicy' => {
        'InstancesDistribution' => {
          'OnDemandBaseCapacity'                => 1,
          'OnDemandPercentageAboveBaseCapacity' => 50,
          'SpotAllocationStrategy'              => 'capacity-optimized'
        },
        'LaunchTemplate' => {
          'LaunchTemplateSpecification' => {
            'LaunchTemplateName' => 'my-launch-template-for-x86',
            'Version'            => '$Latest'
          },
          'Overrides' => [

            {
              'InstanceType'                => 'c6g.large',
              'LaunchTemplateSpecification' => {
                'LaunchTemplateName' => 'my-launch-template-for-arm',
                'Version'            => '$Latest'
              }
            },

            {
              'InstanceType' => 'c5.large'
            },

            {
              'InstanceType' => 'c5a.large'
            }
          ]
        }
      },
      'VPCZoneIdentifier' => 'subnet-057fa0918fEXAMPLE, subnet-610acd08EXAMPLE'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/CreateAutoScalingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group. This name must be unique per Region
per account.



=head2 AvailabilityZones => ArrayRef[Str|Undef]

A list of Availability Zones where instances in the Auto Scaling group
can be created. This parameter is optional if you specify one or more
subnets for C<VPCZoneIdentifier>.

Conditional: If your account supports EC2-Classic and VPC, this
parameter is required to launch instances into EC2-Classic.



=head2 CapacityRebalance => Bool

Indicates whether Capacity Rebalancing is enabled. Otherwise, Capacity
Rebalancing is disabled. When you turn on Capacity Rebalancing, Amazon
EC2 Auto Scaling attempts to launch a Spot Instance whenever Amazon EC2
notifies that a Spot Instance is at an elevated risk of interruption.
After launching a new instance, it then terminates an old instance. For
more information, see Amazon EC2 Auto Scaling Capacity Rebalancing
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/capacity-rebalance.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 Context => Str

Reserved.



=head2 DefaultCooldown => Int

The amount of time, in seconds, after a scaling activity completes
before another scaling activity can start. The default value is C<300>.
This setting applies when using simple scaling policies, but not when
using other scaling policies or scheduled scaling. For more
information, see Scaling cooldowns for Amazon EC2 Auto Scaling
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 DesiredCapacity => Int

The desired capacity is the initial capacity of the Auto Scaling group
at the time of its creation and the capacity it attempts to maintain.
It can scale beyond this capacity if you configure auto scaling. This
number must be greater than or equal to the minimum size of the group
and less than or equal to the maximum size of the group. If you do not
specify a desired capacity, the default is the minimum size of the
group.



=head2 HealthCheckGracePeriod => Int

The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
before checking the health status of an EC2 instance that has come into
service. During this time, any health check failures for the instance
are ignored. The default value is C<0>. For more information, see
Health check grace period
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html#health-check-grace-period)
in the I<Amazon EC2 Auto Scaling User Guide>.

Conditional: Required if you are adding an C<ELB> health check.



=head2 HealthCheckType => Str

The service to use for the health checks. The valid values are C<EC2>
(default) and C<ELB>. If you configure an Auto Scaling group to use
load balancer (ELB) health checks, it considers the instance unhealthy
if it fails either the EC2 status checks or the load balancer health
checks. For more information, see Health checks for Auto Scaling
instances
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 InstanceId => Str

The ID of the instance used to base the launch configuration on. If
specified, Amazon EC2 Auto Scaling uses the configuration values from
the specified instance to create a new launch configuration. To get the
instance ID, use the Amazon EC2 DescribeInstances
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html)
API operation. For more information, see Creating an Auto Scaling group
using an EC2 instance
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 LaunchConfigurationName => Str

The name of the launch configuration to use to launch instances.

Conditional: You must specify either a launch template
(C<LaunchTemplate> or C<MixedInstancesPolicy>) or a launch
configuration (C<LaunchConfigurationName> or C<InstanceId>).



=head2 LaunchTemplate => L<Paws::AutoScaling::LaunchTemplateSpecification>

Parameters used to specify the launch template and version to use to
launch instances.

Conditional: You must specify either a launch template
(C<LaunchTemplate> or C<MixedInstancesPolicy>) or a launch
configuration (C<LaunchConfigurationName> or C<InstanceId>).

The launch template that is specified must be configured for use with
an Auto Scaling group. For more information, see Creating a launch
template for an Auto Scaling group
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 LifecycleHookSpecificationList => ArrayRef[L<Paws::AutoScaling::LifecycleHookSpecification>]

One or more lifecycle hooks for the group, which specify actions to
perform when Amazon EC2 Auto Scaling launches or terminates instances.



=head2 LoadBalancerNames => ArrayRef[Str|Undef]

A list of Classic Load Balancers associated with this Auto Scaling
group. For Application Load Balancers, Network Load Balancers, and
Gateway Load Balancers, specify the C<TargetGroupARNs> property
instead.



=head2 MaxInstanceLifetime => Int

The maximum amount of time, in seconds, that an instance can be in
service. The default is null. If specified, the value must be either 0
or a number equal to or greater than 86,400 seconds (1 day). For more
information, see Replacing Auto Scaling instances based on maximum
instance lifetime
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 B<REQUIRED> MaxSize => Int

The maximum size of the group.

With a mixed instances policy that uses instance weighting, Amazon EC2
Auto Scaling may need to go above C<MaxSize> to meet your capacity
requirements. In this event, Amazon EC2 Auto Scaling will never go
above C<MaxSize> by more than your largest instance weight (weights
that define how many units each instance contributes to the desired
capacity of the group).



=head2 B<REQUIRED> MinSize => Int

The minimum size of the group.



=head2 MixedInstancesPolicy => L<Paws::AutoScaling::MixedInstancesPolicy>

An embedded object that specifies a mixed instances policy. The
required properties must be specified. If optional properties are
unspecified, their default values are used.

The policy includes properties that not only define the distribution of
On-Demand Instances and Spot Instances, the maximum price to pay for
Spot Instances, and how the Auto Scaling group allocates instance types
to fulfill On-Demand and Spot capacities, but also the properties that
specify the instance configuration informationE<mdash>the launch
template and instance types. The policy can also include a weight for
each instance type and different launch templates for individual
instance types. For more information, see Auto Scaling groups with
multiple instance types and purchase options
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-purchase-options.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 NewInstancesProtectedFromScaleIn => Bool

Indicates whether newly launched instances are protected from
termination by Amazon EC2 Auto Scaling when scaling in. For more
information about preventing instances from terminating on scale in,
see Instance scale-in protection
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 PlacementGroup => Str

The name of an existing placement group into which to launch your
instances, if any. A placement group is a logical grouping of instances
within a single Availability Zone. You cannot specify multiple
Availability Zones and a placement group. For more information, see
Placement Groups
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
in the I<Amazon EC2 User Guide for Linux Instances>.



=head2 ServiceLinkedRoleARN => Str

The Amazon Resource Name (ARN) of the service-linked role that the Auto
Scaling group uses to call other Amazon Web Services on your behalf. By
default, Amazon EC2 Auto Scaling uses a service-linked role named
C<AWSServiceRoleForAutoScaling>, which it creates if it does not exist.
For more information, see Service-linked roles
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 Tags => ArrayRef[L<Paws::AutoScaling::Tag>]

One or more tags. You can tag your Auto Scaling group and propagate the
tags to the Amazon EC2 instances it launches. Tags are not propagated
to Amazon EBS volumes. To add tags to Amazon EBS volumes, specify the
tags in a launch template but use caution. If the launch template
specifies an instance tag with a key that is also specified for the
Auto Scaling group, Amazon EC2 Auto Scaling overrides the value of that
instance tag with the value specified by the Auto Scaling group. For
more information, see Tagging Auto Scaling groups and instances
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 TargetGroupARNs => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the target groups to associate with
the Auto Scaling group. Instances are registered as targets in a target
group, and traffic is routed to the target group. For more information,
see Elastic Load Balancing and Amazon EC2 Auto Scaling
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 TerminationPolicies => ArrayRef[Str|Undef]

A policy or a list of policies that are used to select the instance to
terminate. These policies are executed in the order that you list them.
For more information, see Controlling which Auto Scaling instances
terminate during scale in
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 VPCZoneIdentifier => Str

A comma-separated list of subnet IDs for a virtual private cloud (VPC)
where instances in the Auto Scaling group can be created. If you
specify C<VPCZoneIdentifier> with C<AvailabilityZones>, the subnets
that you specify for this parameter must reside in those Availability
Zones.

Conditional: If your account supports EC2-Classic and VPC, this
parameter is required to launch instances into a VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAutoScalingGroup in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

