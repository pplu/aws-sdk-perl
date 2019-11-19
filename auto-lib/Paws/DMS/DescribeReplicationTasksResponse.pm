# Generated from json/callresult_class.tt

package Paws::DMS::DescribeReplicationTasksResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DMS::Types qw/DMS_ReplicationTask/;
  has Marker => (is => 'ro', isa => Str);
  has ReplicationTasks => (is => 'ro', isa => ArrayRef[DMS_ReplicationTask]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReplicationTasks' => {
                                       'class' => 'Paws::DMS::ReplicationTask',
                                       'type' => 'ArrayRef[DMS_ReplicationTask]'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::DMS::DescribeReplicationTasksResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 ReplicationTasks => ArrayRef[DMS_ReplicationTask]

A description of the replication tasks.


=head2 _request_id => Str


=cut

1;