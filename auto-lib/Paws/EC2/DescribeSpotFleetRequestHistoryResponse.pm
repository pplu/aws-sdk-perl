
package Paws::EC2::DescribeSpotFleetRequestHistoryResponse;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_HistoryRecord/;
  has HistoryRecords => (is => 'ro', isa => ArrayRef[EC2_HistoryRecord]);
  has LastEvaluatedTime => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);
  has SpotFleetRequestId => (is => 'ro', isa => Str);
  has StartTime => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LastEvaluatedTime' => {
                                        'type' => 'Str'
                                      },
               'HistoryRecords' => {
                                     'class' => 'Paws::EC2::HistoryRecord',
                                     'type' => 'ArrayRef[EC2_HistoryRecord]'
                                   },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'SpotFleetRequestId' => {
                                         'type' => 'Str'
                                       }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'LastEvaluatedTime' => 'lastEvaluatedTime',
                       'HistoryRecords' => 'historyRecordSet',
                       'StartTime' => 'startTime',
                       'SpotFleetRequestId' => 'spotFleetRequestId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSpotFleetRequestHistoryResponse

=head1 ATTRIBUTES


=head2 HistoryRecords => ArrayRef[EC2_HistoryRecord]

Information about the events in the history of the Spot Fleet request.


=head2 LastEvaluatedTime => Str

The last date and time for the events, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). All records up to this time
were retrieved.

If C<nextToken> indicates that there are more results, this value is
not present.


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
C<null> when there are no more results to return.


=head2 SpotFleetRequestId => Str

The ID of the Spot Fleet request.


=head2 StartTime => Str

The starting date and time for the events, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z).


=head2 _request_id => Str


=cut

