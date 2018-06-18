
package Paws::EC2::DescribeFleetHistory;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has EventType => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFleetHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeFleetHistoryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeFleetHistory - Arguments for method DescribeFleetHistory on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFleetHistory on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeFleetHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFleetHistory.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeFleetHistoryResult = $ec2->DescribeFleetHistory(
      FleetId    => 'MyFleetIdentifier',
      StartTime  => '1970-01-01T01:00:00',
      DryRun     => 1,                       # OPTIONAL
      EventType  => 'instance-change',       # OPTIONAL
      MaxResults => 1,                       # OPTIONAL
      NextToken  => 'MyString',              # OPTIONAL
    );

    # Results:
    my $FleetId           = $DescribeFleetHistoryResult->FleetId;
    my $HistoryRecords    = $DescribeFleetHistoryResult->HistoryRecords;
    my $LastEvaluatedTime = $DescribeFleetHistoryResult->LastEvaluatedTime;
    my $NextToken         = $DescribeFleetHistoryResult->NextToken;
    my $StartTime         = $DescribeFleetHistoryResult->StartTime;

    # Returns a L<Paws::EC2::DescribeFleetHistoryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeFleetHistory>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EventType => Str

The type of events to describe. By default, all events are described.

Valid values are: C<"instance-change">, C<"fleet-change">, C<"service-error">

=head2 B<REQUIRED> FleetId => Str

The ID of the EC2 Fleet.



=head2 MaxResults => Int

The maximum number of results to return in a single call. Specify a
value between 1 and 1000. The default value is 1000. To retrieve the
remaining results, make another call with the returned C<NextToken>
value.



=head2 NextToken => Str

The token for the next set of results.



=head2 B<REQUIRED> StartTime => Str

The start date and time for the events, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFleetHistory in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

