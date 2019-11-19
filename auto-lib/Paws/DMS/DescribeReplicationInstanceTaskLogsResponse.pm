# Generated from json/callresult_class.tt

package Paws::DMS::DescribeReplicationInstanceTaskLogsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DMS::Types qw/DMS_ReplicationInstanceTaskLog/;
  has Marker => (is => 'ro', isa => Str);
  has ReplicationInstanceArn => (is => 'ro', isa => Str);
  has ReplicationInstanceTaskLogs => (is => 'ro', isa => ArrayRef[DMS_ReplicationInstanceTaskLog]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReplicationInstanceTaskLogs' => {
                                                  'class' => 'Paws::DMS::ReplicationInstanceTaskLog',
                                                  'type' => 'ArrayRef[DMS_ReplicationInstanceTaskLog]'
                                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           },
               'ReplicationInstanceArn' => {
                                             'type' => 'Str'
                                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeReplicationInstanceTaskLogsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 ReplicationInstanceArn => Str

The Amazon Resource Name (ARN) of the replication instance.


=head2 ReplicationInstanceTaskLogs => ArrayRef[DMS_ReplicationInstanceTaskLog]

An array of replication task log metadata. Each member of the array
contains the replication task name, ARN, and task log size (in bytes).


=head2 _request_id => Str


=cut

1;