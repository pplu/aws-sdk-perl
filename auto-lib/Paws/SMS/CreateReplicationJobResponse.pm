# Generated from json/callresult_class.tt

package Paws::SMS::CreateReplicationJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SMS::Types qw//;
  has ReplicationJobId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ReplicationJobId' => 'replicationJobId'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReplicationJobId' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SMS::CreateReplicationJobResponse

=head1 ATTRIBUTES


=head2 ReplicationJobId => Str

The unique identifier of the replication job.


=head2 _request_id => Str


=cut

1;