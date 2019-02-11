
package Paws::AutoScaling::UpdateAutoScalingGroup;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DefaultCooldown => (is => 'ro', isa => 'Int');
  has DesiredCapacity => (is => 'ro', isa => 'Int');
  has HealthCheckGracePeriod => (is => 'ro', isa => 'Int');
  has HealthCheckType => (is => 'ro', isa => 'Str');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str');
  has LaunchTemplate => (is => 'ro', isa => 'Paws::AutoScaling::LaunchTemplateSpecification');
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
      {
        'AutoScalingGroupName'    => 'my-auto-scaling-group',
        'LaunchConfigurationName' => 'new-launch-config'
      }
    );

    # To update the minimum and maximum size
    # This example updates the minimum size and maximum size of the specified
    # Auto Scaling group.
    $autoscaling->UpdateAutoScalingGroup(
      {
        'AutoScalingGroupName' => 'my-auto-scaling-group',
        'MaxSize'              => 3,
        'MinSize'              => 1
      }
    );

    # To enable instance protection
    # This example enables instance protection for the specified Auto Scaling
    # group.
    $autoscaling->UpdateAutoScalingGroup(
      {
        'AutoScalingGroupName'             => 'my-auto-scaling-group',
        'NewInstancesProtectedFromScaleIn' => 1
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/UpdateAutoScalingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 AvailabilityZones => ArrayRef[Str|Undef]

One or more Availability Zones for the group.



=head2 DefaultCooldown => Int

The amount of time, in seconds, after a scaling activity completes
before another scaling activity can start. The default is 300.

For more information, see Scaling Cooldowns
(http://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html) in
the I<Amazon EC2 Auto Scaling User Guide>.



=head2 DesiredCapacity => Int

The number of EC2 instances that should be running in the Auto Scaling
group. This number must be greater than or equal to the minimum size of
the group and less than or equal to the maximum size of the group.



=head2 HealthCheckGracePeriod => Int

The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
before checking the health status of an EC2 instance that has come into
service. The default is 0.

For more information, see Health Checks
(http://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 HealthCheckType => Str

The service to use for the health checks. The valid values are C<EC2>
and C<ELB>.



=head2 LaunchConfigurationName => Str

The name of the launch configuration. If you specify this parameter,
you can't specify a launch template or a mixed instances policy.



=head2 LaunchTemplate => L<Paws::AutoScaling::LaunchTemplateSpecification>

The launch template and version to use to specify the updates. If you
specify this parameter, you can't specify a launch configuration or a
mixed instances policy.



=head2 MaxSize => Int

The maximum size of the Auto Scaling group.



=head2 MinSize => Int

The minimum size of the Auto Scaling group.



=head2 MixedInstancesPolicy => L<Paws::AutoScaling::MixedInstancesPolicy>

The mixed instances policy to use to specify the updates. If you
specify this parameter, you can't specify a launch configuration or a
launch template.



=head2 NewInstancesProtectedFromScaleIn => Bool

Indicates whether newly launched instances are protected from
termination by Auto Scaling when scaling in.



=head2 PlacementGroup => Str

The name of the placement group into which to launch your instances, if
any. For more information, see Placement Groups
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 ServiceLinkedRoleARN => Str

The Amazon Resource Name (ARN) of the service-linked role that the Auto
Scaling group uses to call other AWS services on your behalf.



=head2 TerminationPolicies => ArrayRef[Str|Undef]

A standalone termination policy or a list of termination policies used
to select the instance to terminate. The policies are executed in the
order that they are listed.

For more information, see Controlling Which Instances Auto Scaling
Terminates During Scale In
(http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html)
in the I<Auto Scaling User Guide>.



=head2 VPCZoneIdentifier => Str

The ID of the subnet, if you are launching into a VPC. You can specify
several subnets in a comma-separated list.

When you specify C<VPCZoneIdentifier> with C<AvailabilityZones>, ensure
that the subnets' Availability Zones match the values you specify for
C<AvailabilityZones>.

For more information, see Launching Auto Scaling Instances in a VPC
(http://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html)
in the I<Amazon EC2 Auto Scaling User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAutoScalingGroup in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

