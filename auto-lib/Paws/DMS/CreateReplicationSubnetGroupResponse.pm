# Generated from json/callresult_class.tt

package Paws::DMS::CreateReplicationSubnetGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DMS::Types qw/DMS_ReplicationSubnetGroup/;
  has ReplicationSubnetGroup => (is => 'ro', isa => DMS_ReplicationSubnetGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReplicationSubnetGroup' => {
                                             'class' => 'Paws::DMS::ReplicationSubnetGroup',
                                             'type' => 'DMS_ReplicationSubnetGroup'
                                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateReplicationSubnetGroupResponse

=head1 ATTRIBUTES


=head2 ReplicationSubnetGroup => DMS_ReplicationSubnetGroup

The replication subnet group that was created.


=head2 _request_id => Str


=cut

1;