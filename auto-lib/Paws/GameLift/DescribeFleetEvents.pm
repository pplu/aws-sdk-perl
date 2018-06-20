
package Paws::GameLift::DescribeFleetEvents;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFleetEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeFleetEventsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetEvents - Arguments for method DescribeFleetEvents on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFleetEvents on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeFleetEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFleetEvents.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeFleetEventsOutput = $gamelift->DescribeFleetEvents(
      FleetId   => 'MyFleetId',
      EndTime   => '1970-01-01T01:00:00',      # OPTIONAL
      Limit     => 1,                          # OPTIONAL
      NextToken => 'MyNonZeroAndMaxString',    # OPTIONAL
      StartTime => '1970-01-01T01:00:00',      # OPTIONAL
    );

    # Results:
    my $Events    = $DescribeFleetEventsOutput->Events;
    my $NextToken = $DescribeFleetEventsOutput->NextToken;

    # Returns a L<Paws::GameLift::DescribeFleetEventsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeFleetEvents>

=head1 ATTRIBUTES


=head2 EndTime => Str

Most recent date to retrieve event logs for. If no end time is
specified, this call returns entries from the specified start time up
to the present. Format is a number expressed in Unix time as
milliseconds (ex: "1469498468.057").



=head2 B<REQUIRED> FleetId => Str

Unique identifier for a fleet to get event logs for.



=head2 Limit => Int

Maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages.



=head2 NextToken => Str

Token that indicates the start of the next sequential page of results.
Use the token that is returned with a previous call to this action. To
start at the beginning of the result set, do not specify a value.



=head2 StartTime => Str

Earliest date to retrieve event logs for. If no start time is
specified, this call returns entries starting from when the fleet was
created to the specified end time. Format is a number expressed in Unix
time as milliseconds (ex: "1469498468.057").




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFleetEvents in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

