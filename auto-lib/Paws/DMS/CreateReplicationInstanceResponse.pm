# Generated from json/callresult_class.tt

package Paws::DMS::CreateReplicationInstanceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DMS::Types qw/DMS_ReplicationInstance/;
  has ReplicationInstance => (is => 'ro', isa => DMS_ReplicationInstance);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReplicationInstance' => {
                                          'type' => 'DMS_ReplicationInstance',
                                          'class' => 'Paws::DMS::ReplicationInstance'
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

Paws::DMS::CreateReplicationInstanceResponse

=head1 ATTRIBUTES


=head2 ReplicationInstance => DMS_ReplicationInstance

The replication instance that was created.


=head2 _request_id => Str


=cut

1;