# Generated from json/callresult_class.tt

package Paws::DMS::StartReplicationTaskResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DMS::Types qw/DMS_ReplicationTask/;
  has ReplicationTask => (is => 'ro', isa => DMS_ReplicationTask);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReplicationTask' => {
                                      'type' => 'DMS_ReplicationTask',
                                      'class' => 'Paws::DMS::ReplicationTask'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::StartReplicationTaskResponse

=head1 ATTRIBUTES


=head2 ReplicationTask => DMS_ReplicationTask

The replication task started.


=head2 _request_id => Str


=cut

1;