# Generated from json/callresult_class.tt

package Paws::SMS::StartOnDemandReplicationRunResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SMS::Types qw//;
  has ReplicationRunId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ReplicationRunId' => 'replicationRunId'
                     },
  'types' => {
               'ReplicationRunId' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SMS::StartOnDemandReplicationRunResponse

=head1 ATTRIBUTES


=head2 ReplicationRunId => Str

The identifier of the replication run.


=head2 _request_id => Str


=cut

1;