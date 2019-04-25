package Paws::GameLift::RoutingStrategy;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::RoutingStrategy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::RoutingStrategy object:

  $service_obj->Method(Att1 => { FleetId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::RoutingStrategy object:

  $result = $service_obj->Method(...);
  $result->Att1->FleetId

=head1 DESCRIPTION

Routing configuration for a fleet alias.

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


=head2 FleetId => Str

  Unique identifier for a fleet that the alias points to.


=head2 Message => Str

  Message text to be used with a terminal routing strategy.


=head2 Type => Str

  Type of routing strategy.

Possible routing types include the following:

=over

=item *

B<SIMPLE> -- The alias resolves to one specific fleet. Use this type
when routing to active fleets.

=item *

B<TERMINAL> -- The alias does not resolve to a fleet but instead can be
used to display a message to the user. A terminal alias throws a
TerminalRoutingStrategyException with the RoutingStrategy message
embedded.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

