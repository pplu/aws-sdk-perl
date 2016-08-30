
package Paws::AutoScaling::UpdateAutoScalingGroup;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
  has DefaultCooldown => (is => 'ro', isa => 'Int');
  has DesiredCapacity => (is => 'ro', isa => 'Int');
  has HealthCheckGracePeriod => (is => 'ro', isa => 'Int');
  has HealthCheckType => (is => 'ro', isa => 'Str');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str');
  has MaxSize => (is => 'ro', isa => 'Int');
  has MinSize => (is => 'ro', isa => 'Int');
  has NewInstancesProtectedFromScaleIn => (is => 'ro', isa => 'Bool');
  has PlacementGroup => (is => 'ro', isa => 'Str');
  has TerminationPolicies => (is => 'ro', isa => 'ArrayRef[Str]');
  has VPCZoneIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAutoScalingGroup');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::UpdateAutoScalingGroup - Arguments for method UpdateAutoScalingGroup on Paws::AutoScaling

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAutoScalingGroup on the 
Auto Scaling service. Use the attributes of this class
as arguments to method UpdateAutoScalingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAutoScalingGroup.

As an example:

  $service_obj->UpdateAutoScalingGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 AvailabilityZones => ArrayRef[Str]

One or more Availability Zones for the group.



=head2 DefaultCooldown => Int

The amount of time, in seconds, after a scaling activity completes
before another scaling activity can start. The default is 300.

For more information, see Auto Scaling Cooldowns in the I<Auto Scaling
User Guide>.



=head2 DesiredCapacity => Int

The number of EC2 instances that should be running in the Auto Scaling
group. This number must be greater than or equal to the minimum size of
the group and less than or equal to the maximum size of the group.



=head2 HealthCheckGracePeriod => Int

The amount of time, in seconds, that Auto Scaling waits before checking
the health status of an EC2 instance that has come into service. The
default is 0.

For more information, see Health Checks in the I<Auto Scaling User
Guide>.



=head2 HealthCheckType => Str

The service to use for the health checks. The valid values are C<EC2>
and C<ELB>.



=head2 LaunchConfigurationName => Str

The name of the launch configuration.



=head2 MaxSize => Int

The maximum size of the Auto Scaling group.



=head2 MinSize => Int

The minimum size of the Auto Scaling group.



=head2 NewInstancesProtectedFromScaleIn => Bool

Indicates whether newly launched instances are protected from
termination by Auto Scaling when scaling in.



=head2 PlacementGroup => Str

The name of the placement group into which you'll launch your
instances, if any. For more information, see Placement Groups in the
I<Amazon Elastic Compute Cloud User Guide>.



=head2 TerminationPolicies => ArrayRef[Str]

A standalone termination policy or a list of termination policies used
to select the instance to terminate. The policies are executed in the
order that they are listed.

For more information, see Controlling Which Instances Auto Scaling
Terminates During Scale In in the I<Auto Scaling User Guide>.



=head2 VPCZoneIdentifier => Str

The ID of the subnet, if you are launching into a VPC. You can specify
several subnets in a comma-separated list.

When you specify C<VPCZoneIdentifier> with C<AvailabilityZones>, ensure
that the subnets' Availability Zones match the values you specify for
C<AvailabilityZones>.

For more information, see Launching Auto Scaling Instances in a VPC in
the I<Auto Scaling User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAutoScalingGroup in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

