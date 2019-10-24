# Generated from json/callresult_class.tt

package Paws::DMS::DescribeTableStatisticsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DMS::Types qw/DMS_TableStatistics/;
  has Marker => (is => 'ro', isa => Str);
  has ReplicationTaskArn => (is => 'ro', isa => Str);
  has TableStatistics => (is => 'ro', isa => ArrayRef[DMS_TableStatistics]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReplicationTaskArn' => {
                                         'type' => 'Str'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TableStatistics' => {
                                      'class' => 'Paws::DMS::TableStatistics',
                                      'type' => 'ArrayRef[DMS_TableStatistics]'
                                    },
               'Marker' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeTableStatisticsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 ReplicationTaskArn => Str

The Amazon Resource Name (ARN) of the replication task.


=head2 TableStatistics => ArrayRef[DMS_TableStatistics]

The table statistics.


=head2 _request_id => Str


=cut

1;