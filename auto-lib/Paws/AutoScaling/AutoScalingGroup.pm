package Paws::AutoScaling::AutoScalingGroup;
  use Moose;
  has AutoScalingGroupARN => (is => 'ro', isa => 'Str');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has CreatedTime => (is => 'ro', isa => 'Str', required => 1);
  has DefaultCooldown => (is => 'ro', isa => 'Int', required => 1);
  has DesiredCapacity => (is => 'ro', isa => 'Int', required => 1);
  has EnabledMetrics => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::EnabledMetric]');
  has HealthCheckGracePeriod => (is => 'ro', isa => 'Int');
  has HealthCheckType => (is => 'ro', isa => 'Str', required => 1);
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::Instance]');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str');
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxSize => (is => 'ro', isa => 'Int', required => 1);
  has MinSize => (is => 'ro', isa => 'Int', required => 1);
  has PlacementGroup => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SuspendedProcesses => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::SuspendedProcess]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::TagDescription]');
  has TerminationPolicies => (is => 'ro', isa => 'ArrayRef[Str]');
  has VPCZoneIdentifier => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::AutoScalingGroup

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 AutoScalingGroupARN => Str

  The Amazon Resource Name (ARN) of the group.

=head2 B<REQUIRED> AutoScalingGroupName => Str

  The name of the group.

=head2 B<REQUIRED> AvailabilityZones => ArrayRef[Str]

  One or more Availability Zones for the group.

=head2 B<REQUIRED> CreatedTime => Str

  The date and time the group was created.

=head2 B<REQUIRED> DefaultCooldown => Int

  The number of seconds after a scaling activity completes before any
further scaling activities can start.

=head2 B<REQUIRED> DesiredCapacity => Int

  The desired size of the group.

=head2 EnabledMetrics => ArrayRef[L<Paws::AutoScaling::EnabledMetric>]

  The metrics enabled for the group.

=head2 HealthCheckGracePeriod => Int

  The amount of time that Auto Scaling waits before checking an
instance's health status. The grace period begins when an instance
comes into service.

=head2 B<REQUIRED> HealthCheckType => Str

  The service of interest for the health status check, which can be
either C<EC2> for Amazon EC2 or C<ELB> for Elastic Load Balancing.

=head2 Instances => ArrayRef[L<Paws::AutoScaling::Instance>]

  The EC2 instances associated with the group.

=head2 LaunchConfigurationName => Str

  The name of the associated launch configuration.

=head2 LoadBalancerNames => ArrayRef[Str]

  One or more load balancers associated with the group.

=head2 B<REQUIRED> MaxSize => Int

  The maximum size of the group.

=head2 B<REQUIRED> MinSize => Int

  The minimum size of the group.

=head2 PlacementGroup => Str

  The name of the placement group into which you'll launch your
instances, if any. For more information, see Placement Groups.

=head2 Status => Str

  The current state of the group when DeleteAutoScalingGroup is in
progress.

=head2 SuspendedProcesses => ArrayRef[L<Paws::AutoScaling::SuspendedProcess>]

  The suspended processes associated with the group.

=head2 Tags => ArrayRef[L<Paws::AutoScaling::TagDescription>]

  The tags for the group.

=head2 TerminationPolicies => ArrayRef[Str]

  The termination policies for the group.

=head2 VPCZoneIdentifier => Str

  One or more subnet IDs, if applicable, separated by commas.

If you specify C<VPCZoneIdentifier> and C<AvailabilityZones>, ensure
that the Availability Zones of the subnets match the values for
C<AvailabilityZones>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

