# Generated from json/callresult_class.tt

package Paws::DMS::DeleteReplicationInstanceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DMS::Types qw/DMS_ReplicationInstance/;
  has ReplicationInstance => (is => 'ro', isa => DMS_ReplicationInstance);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReplicationInstance' => {
                                          'class' => 'Paws::DMS::ReplicationInstance',
                                          'type' => 'DMS_ReplicationInstance'
                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::DeleteReplicationInstanceResponse

=head1 ATTRIBUTES


=head2 ReplicationInstance => DMS_ReplicationInstance

The replication instance that was deleted.


=head2 _request_id => Str


=cut

1;