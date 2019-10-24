# Generated from json/callresult_class.tt

package Paws::DMS::ModifyReplicationInstanceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DMS::Types qw/DMS_ReplicationInstance/;
  has ReplicationInstance => (is => 'ro', isa => DMS_ReplicationInstance);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReplicationInstance' => {
                                          'class' => 'Paws::DMS::ReplicationInstance',
                                          'type' => 'DMS_ReplicationInstance'
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

Paws::DMS::ModifyReplicationInstanceResponse

=head1 ATTRIBUTES


=head2 ReplicationInstance => DMS_ReplicationInstance

The modified replication instance.


=head2 _request_id => Str


=cut

1;