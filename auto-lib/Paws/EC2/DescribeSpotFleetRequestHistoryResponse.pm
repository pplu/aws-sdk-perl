
package Paws::EC2::DescribeSpotFleetRequestHistoryResponse;
  use Moose;
  has HistoryRecords => (is => 'ro', isa => 'ArrayRef[Paws::EC2::HistoryRecord]', request_name => 'historyRecordSet', traits => ['NameInRequest',], required => 1);
  has LastEvaluatedTime => (is => 'ro', isa => 'Str', request_name => 'lastEvaluatedTime', traits => ['NameInRequest',], required => 1);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has SpotFleetRequestId => (is => 'ro', isa => 'Str', request_name => 'spotFleetRequestId', traits => ['NameInRequest',], required => 1);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest',], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSpotFleetRequestHistoryResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HistoryRecords => ArrayRef[L<Paws::EC2::HistoryRecord>]

Information about the events in the history of the Spot fleet request.



=head2 B<REQUIRED> LastEvaluatedTime => Str

The last date and time for the events, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). All records up to this time
were retrieved.

If C<nextToken> indicates that there are more results, this value is
not present.



=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
C<null> when there are no more results to return.



=head2 B<REQUIRED> SpotFleetRequestId => Str

The ID of the Spot fleet request.



=head2 B<REQUIRED> StartTime => Str

The starting date and time for the events, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z).




=cut

