package Paws::GameLift::EC2InstanceCounts;
  use Moose;
  has ACTIVE => (is => 'ro', isa => 'Int');
  has DESIRED => (is => 'ro', isa => 'Int');
  has IDLE => (is => 'ro', isa => 'Int');
  has MAXIMUM => (is => 'ro', isa => 'Int');
  has MINIMUM => (is => 'ro', isa => 'Int');
  has PENDING => (is => 'ro', isa => 'Int');
  has TERMINATING => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::EC2InstanceCounts

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::EC2InstanceCounts object:

  $service_obj->Method(Att1 => { ACTIVE => $value, ..., TERMINATING => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::EC2InstanceCounts object:

  $result = $service_obj->Method(...);
  $result->Att1->ACTIVE

=head1 DESCRIPTION

Current status of fleet capacity. The number of active instances should
match or be in the process of matching the number of desired instances.
Pending and terminating counts are non-zero only if fleet capacity is
adjusting to an UpdateFleetCapacity request, or if access to resources
is temporarily affected.

=over

=item *

CreateFleet

=item *

ListFleets

=item *

DeleteFleet

=item *

Describe fleets:

=over

=item *

DescribeFleetAttributes

=item *

DescribeFleetCapacity

=item *

DescribeFleetPortSettings

=item *

DescribeFleetUtilization

=item *

DescribeRuntimeConfiguration

=item *

DescribeEC2InstanceLimits

=item *

DescribeFleetEvents

=back

=item *

Update fleets:

=over

=item *

UpdateFleetAttributes

=item *

UpdateFleetCapacity

=item *

UpdateFleetPortSettings

=item *

UpdateRuntimeConfiguration

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


=head2 ACTIVE => Int

  Actual number of active instances in the fleet.


=head2 DESIRED => Int

  Ideal number of active instances in the fleet.


=head2 IDLE => Int

  Number of active instances in the fleet that are not currently hosting
a game session.


=head2 MAXIMUM => Int

  Maximum value allowed for the fleet's instance count.


=head2 MINIMUM => Int

  Minimum value allowed for the fleet's instance count.


=head2 PENDING => Int

  Number of instances in the fleet that are starting but not yet active.


=head2 TERMINATING => Int

  Number of instances in the fleet that are no longer active but haven't
yet been terminated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

