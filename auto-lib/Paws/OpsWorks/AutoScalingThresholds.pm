package Paws::OpsWorks::AutoScalingThresholds;
  use Moose;
  has Alarms => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CpuThreshold => (is => 'ro', isa => 'Num');
  has IgnoreMetricsTime => (is => 'ro', isa => 'Int');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has LoadThreshold => (is => 'ro', isa => 'Num');
  has MemoryThreshold => (is => 'ro', isa => 'Num');
  has ThresholdsWaitTime => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::AutoScalingThresholds

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::AutoScalingThresholds object:

  $service_obj->Method(Att1 => { Alarms => $value, ..., ThresholdsWaitTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::AutoScalingThresholds object:

  $result = $service_obj->Method(...);
  $result->Att1->Alarms

=head1 DESCRIPTION

Describes a load-based auto scaling upscaling or downscaling threshold
configuration, which specifies when AWS OpsWorks Stacks starts or stops
load-based instances.

=head1 ATTRIBUTES


=head2 Alarms => ArrayRef[Str|Undef]

  Custom Cloudwatch auto scaling alarms, to be used as thresholds. This
parameter takes a list of up to five alarm names, which are case
sensitive and must be in the same region as the stack.

To use custom alarms, you must update your service role to allow
C<cloudwatch:DescribeAlarms>. You can either have AWS OpsWorks Stacks
update the role for you when you first use this feature or you can edit
the role manually. For more information, see Allowing AWS OpsWorks
Stacks to Act on Your Behalf
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-servicerole.html).


=head2 CpuThreshold => Num

  The CPU utilization threshold, as a percent of the available CPU. A
value of -1 disables the threshold.


=head2 IgnoreMetricsTime => Int

  The amount of time (in minutes) after a scaling event occurs that AWS
OpsWorks Stacks should ignore metrics and suppress additional scaling
events. For example, AWS OpsWorks Stacks adds new instances following
an upscaling event but the instances won't start reducing the load
until they have been booted and configured. There is no point in
raising additional scaling events during that operation, which
typically takes several minutes. C<IgnoreMetricsTime> allows you to
direct AWS OpsWorks Stacks to suppress scaling events long enough to
get the new instances online.


=head2 InstanceCount => Int

  The number of instances to add or remove when the load exceeds a
threshold.


=head2 LoadThreshold => Num

  The load threshold. A value of -1 disables the threshold. For more
information about how load is computed, see Load (computing)
(http://en.wikipedia.org/wiki/Load_%28computing%29).


=head2 MemoryThreshold => Num

  The memory utilization threshold, as a percent of the available memory.
A value of -1 disables the threshold.


=head2 ThresholdsWaitTime => Int

  The amount of time, in minutes, that the load must exceed a threshold
before more instances are added or removed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

