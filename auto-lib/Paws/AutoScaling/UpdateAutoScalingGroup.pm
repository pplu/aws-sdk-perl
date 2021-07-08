
package Paws::AutoScaling::UpdateAutoScalingGroup;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CapacityRebalance => (is => 'ro', isa => 'Bool');
  has Context => (is => 'ro', isa => 'Str');
  has DefaultCooldown => (is => 'ro', isa => 'Int');
  has DesiredCapacity => (is => 'ro', isa => 'Int');
  has HealthCheckGracePeriod => (is => 'ro', isa => 'Int');
  has HealthCheckType => (is => 'ro', isa => 'Str');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str');
  has LaunchTemplate => (is => 'ro', isa => 'Paws::AutoScaling::LaunchTemplateSpecification');
  has MaxInstanceLifetime => (is => 'ro', isa => 'Int');
  has MaxSize => (is => 'ro', isa => 'Int');
  has MinSize => (is => 'ro', isa => 'Int');
  has MixedInstancesPolicy => (is => 'ro', isa => 'Paws::AutoScaling::MixedInstancesPolicy');
  has NewInstancesProtectedFromScaleIn => (is => 'ro', isa => 'Bool');
  has PlacementGroup => (is => 'ro', isa => 'Str');
  has ServiceLinkedRoleARN => (is => 'ro', isa => 'Str');
  has TerminationPolicies => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VPCZoneIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAutoScalingGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::UpdateAutoScalingGroup - Arguments for method UpdateAutoScalingGroup on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAutoScalingGroup on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method UpdateAutoScalingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAutoScalingGroup.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
   # To update the launch configuration
   # This example updates the launch configuration of the specified Auto Scaling
   # group.
    $autoscaling->UpdateAutoScalingGroup(
      'AutoScalingGroupName'    => 'my-auto-scaling-group',
      'LaunchConfigurationName' => 'new-launch-config'
    );

  # To update the minimum and maximum size
  # This example updates the minimum size and maximum size of the specified Auto
  # Scaling group.
    $autoscaling->UpdateAutoScalingGroup(
      'AutoScalingGroupName' => 'my-auto-scaling-group',
      'MaxSize'              => 3,
      'MinSize'              => 1
    );

# To enable instance protection
# This example enables instance protection for the specified Auto Scaling group.
    $autoscaling->UpdateAutoScalingGroup(
      'AutoScalingGroupName'             => 'my-auto-scaling-group',
      'NewInstancesProtectedFromScaleIn' => 1
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/UpdateAutoScalingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 AvailabilityZones => ArrayRef[Str|Undef]

One or more Availability Zones for the group.



=head2 CapacityRebalance => Bool

Enables or disables Capacity Rebalancing. For more information, see
Amazon EC2 Auto Scaling Capacity Rebalancing
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
after this operation completes and the capacity it attempts to
maintain. This number must be greater than or equal to the minimum size
of the group and less than or equal to the maximum size of the group.



=head2 HealthCheckGracePeriod => Int

The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
before checking the health status of an EC2 instance that has come into
service. The default value is C<0>. For more information, see Health
check grace period
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html#health-check-grace-period)
in the I<Amazon EC2 Auto Scaling User Guide>.

Conditional: Required if you are adding an C<ELB> health check.



=head2 HealthCheckType => Str

The service to use for the health checks. The valid values are C<EC2>
and C<ELB>. If you configure an Auto Scaling group to use C<ELB> health
checks, it considers the instance unhealthy if it fails either the EC2
status checks or the load balancer health checks.



=head2 LaunchConfigurationName => Str

The name of the launch configuration. If you specify
C<LaunchConfigurationName> in your update request, you can't specify
C<LaunchTemplate> or C<MixedInstancesPolicy>.



=head2 LaunchTemplate => L<Paws::AutoScaling::LaunchTemplateSpecification>

The launch template and version to use to specify the updates. If you
specify C<LaunchTemplate> in your update request, you can't specify
C<LaunchConfigurationName> or C<MixedInstancesPolicy>.



=head2 MaxInstanceLifetime => Int

The maximum amount of time, in seconds, that an instance can be in
service. The default is null. If specified, the value must be either 0
or a number equal to or greater than 86,400 seconds (1 day). To clear a
previously set value, specify a new value of 0. For more information,
see Replacing Auto Scaling instances based on maximum instance lifetime
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 MaxSize => Int

The maximum size of the Auto Scaling group.

With a mixed instances policy that uses instance weighting, Amazon EC2
Auto Scaling may need to go above C<MaxSize> to meet your capacity
requirements. In this event, Amazon EC2 Auto Scaling will never go
above C<MaxSize> by more than your largest instance weight (weights
that define how many units each instance contributes to the desired
capacity of the group).



=head2 MinSize => Int

The minimum size of the Auto Scaling group.



=head2 MixedInstancesPolicy => L<Paws::AutoScaling::MixedInstancesPolicy>

An embedded object that specifies a mixed instances policy. When you
make changes to an existing policy, all optional properties are left
unchanged if not specified. For more information, see Auto Scaling
groups with multiple instance types and purchase options
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
Scaling group uses to call other Amazon Web Services on your behalf.
For more information, see Service-linked roles
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 TerminationPolicies => ArrayRef[Str|Undef]

A policy or a list of policies that are used to select the instances to
terminate. The policies are executed in the order that you list them.
For more information, see Controlling which Auto Scaling instances
terminate during scale in
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 VPCZoneIdentifier => Str

A comma-separated list of subnet IDs for a virtual private cloud (VPC).
If you specify C<VPCZoneIdentifier> with C<AvailabilityZones>, the
subnets that you specify for this parameter must reside in those
Availability Zones.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAutoScalingGroup in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

