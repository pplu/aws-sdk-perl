package Paws::GameLift::TargetConfiguration;
  use Moose;
  has TargetValue => (is => 'ro', isa => 'Num', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::TargetConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::TargetConfiguration object:

  $service_obj->Method(Att1 => { TargetValue => $value, ..., TargetValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::TargetConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->TargetValue

=head1 DESCRIPTION

Settings for a target-based scaling policy (see ScalingPolicy. A
target-based policy tracks a particular fleet metric specifies a target
value for the metric. As player usage changes, the policy triggers
Amazon GameLift to adjust capacity so that the metric returns to the
target value. The target configuration specifies settings as needed for
the target based policy, including the target value.

=over

=item *

DescribeFleetCapacity

=item *

UpdateFleetCapacity

=item *

DescribeEC2InstanceLimits

=item *

Manage scaling policies:

=over

=item *

PutScalingPolicy (auto-scaling)

=item *

DescribeScalingPolicies (auto-scaling)

=item *

DeleteScalingPolicy (auto-scaling)

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> TargetValue => Num

  Desired value to use with a target-based scaling policy. The value must
be relevant for whatever metric the scaling policy is using. For
example, in a policy using the metric PercentAvailableGameSessions, the
target value should be the preferred size of the fleet's buffer (the
percent of capacity that should be idle and ready for new game
sessions).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

