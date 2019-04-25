package Paws::AutoScaling::AutoScalingGroup;
  use Moose;
  has AutoScalingGroupARN => (is => 'ro', isa => 'Str');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has CreatedTime => (is => 'ro', isa => 'Str', required => 1);
  has DefaultCooldown => (is => 'ro', isa => 'Int', required => 1);
  has DesiredCapacity => (is => 'ro', isa => 'Int', required => 1);
  has EnabledMetrics => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::EnabledMetric]');
  has HealthCheckGracePeriod => (is => 'ro', isa => 'Int');
  has HealthCheckType => (is => 'ro', isa => 'Str', required => 1);
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::Instance]');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str');
  has LaunchTemplate => (is => 'ro', isa => 'Paws::AutoScaling::LaunchTemplateSpecification');
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxSize => (is => 'ro', isa => 'Int', required => 1);
  has MinSize => (is => 'ro', isa => 'Int', required => 1);
  has MixedInstancesPolicy => (is => 'ro', isa => 'Paws::AutoScaling::MixedInstancesPolicy');
  has NewInstancesProtectedFromScaleIn => (is => 'ro', isa => 'Bool');
  has PlacementGroup => (is => 'ro', isa => 'Str');
  has ServiceLinkedRoleARN => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SuspendedProcesses => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::SuspendedProcess]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::TagDescription]');
  has TargetGroupARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TerminationPolicies => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VPCZoneIdentifier => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::AutoScalingGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::AutoScalingGroup object:

  $service_obj->Method(Att1 => { AutoScalingGroupARN => $value, ..., VPCZoneIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::AutoScalingGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingGroupARN

=head1 DESCRIPTION

Describes an Auto Scaling group.

=head1 ATTRIBUTES


=head2 AutoScalingGroupARN => Str

  The Amazon Resource Name (ARN) of the Auto Scaling group.


=head2 B<REQUIRED> AutoScalingGroupName => Str

  The name of the Auto Scaling group.


=head2 B<REQUIRED> AvailabilityZones => ArrayRef[Str|Undef]

  One or more Availability Zones for the group.


=head2 B<REQUIRED> CreatedTime => Str

  The date and time the group was created.


=head2 B<REQUIRED> DefaultCooldown => Int

  The amount of time, in seconds, after a scaling activity completes
before another scaling activity can start.


=head2 B<REQUIRED> DesiredCapacity => Int

  The desired size of the group.


=head2 EnabledMetrics => ArrayRef[L<Paws::AutoScaling::EnabledMetric>]

  The metrics enabled for the group.


=head2 HealthCheckGracePeriod => Int

  The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
before checking the health status of an EC2 instance that has come into
service.


=head2 B<REQUIRED> HealthCheckType => Str

  The service to use for the health checks. The valid values are C<EC2>
and C<ELB>.


=head2 Instances => ArrayRef[L<Paws::AutoScaling::Instance>]

  The EC2 instances associated with the group.


=head2 LaunchConfigurationName => Str

  The name of the associated launch configuration.


=head2 LaunchTemplate => L<Paws::AutoScaling::LaunchTemplateSpecification>

  The launch template for the group.


=head2 LoadBalancerNames => ArrayRef[Str|Undef]

  One or more load balancers associated with the group.


=head2 B<REQUIRED> MaxSize => Int

  The maximum size of the group.


=head2 B<REQUIRED> MinSize => Int

  The minimum size of the group.


=head2 MixedInstancesPolicy => L<Paws::AutoScaling::MixedInstancesPolicy>

  The mixed instances policy for the group.


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


=head2 Status => Str

  The current state of the group when DeleteAutoScalingGroup is in
progress.


=head2 SuspendedProcesses => ArrayRef[L<Paws::AutoScaling::SuspendedProcess>]

  The suspended processes associated with the group.


=head2 Tags => ArrayRef[L<Paws::AutoScaling::TagDescription>]

  The tags for the group.


=head2 TargetGroupARNs => ArrayRef[Str|Undef]

  The Amazon Resource Names (ARN) of the target groups for your load
balancer.


=head2 TerminationPolicies => ArrayRef[Str|Undef]

  The termination policies for the group.


=head2 VPCZoneIdentifier => Str

  One or more subnet IDs, if applicable, separated by commas.

If you specify C<VPCZoneIdentifier> and C<AvailabilityZones>, ensure
that the Availability Zones of the subnets match the values for
C<AvailabilityZones>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

