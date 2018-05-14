
package Paws::EC2::DescribeFleetHistoryResult;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str', request_name => 'fleetId', traits => ['NameInRequest',]);
  has HistoryRecords => (is => 'ro', isa => 'ArrayRef[Paws::EC2::HistoryRecordEntry]', request_name => 'historyRecordSet', traits => ['NameInRequest',]);
  has LastEvaluatedTime => (is => 'ro', isa => 'Str', request_name => 'lastEvaluatedTime', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeFleetHistoryResult

=head1 ATTRIBUTES


=head2 FleetId => Str

The ID of the EC Fleet.


=head2 HistoryRecords => ArrayRef[L<Paws::EC2::HistoryRecordEntry>]

Information about the events in the history of the EC2 Fleet.


=head2 LastEvaluatedTime => Str

The last date and time for the events, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). All records up to this time
were retrieved.

If C<nextToken> indicates that there are more results, this value is
not present.


=head2 NextToken => Str

The token for the next set of results.


=head2 StartTime => Str

The start date and time for the events, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z).


=head2 _request_id => Str


=cut

