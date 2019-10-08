
package Paws::EC2::DescribeFleetHistoryResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_HistoryRecordEntry/;
  has FleetId => (is => 'ro', isa => Str);
  has HistoryRecords => (is => 'ro', isa => ArrayRef[EC2_HistoryRecordEntry]);
  has LastEvaluatedTime => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);
  has StartTime => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'FleetId' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LastEvaluatedTime' => {
                                        'type' => 'Str'
                                      },
               'HistoryRecords' => {
                                     'class' => 'Paws::EC2::HistoryRecordEntry',
                                     'type' => 'ArrayRef[EC2_HistoryRecordEntry]'
                                   },
               'StartTime' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'FleetId' => 'fleetId',
                       'LastEvaluatedTime' => 'lastEvaluatedTime',
                       'HistoryRecords' => 'historyRecordSet',
                       'StartTime' => 'startTime'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeFleetHistoryResult

=head1 ATTRIBUTES


=head2 FleetId => Str

The ID of the EC Fleet.


=head2 HistoryRecords => ArrayRef[EC2_HistoryRecordEntry]

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

