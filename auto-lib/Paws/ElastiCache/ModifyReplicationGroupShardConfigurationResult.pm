# Generated from callresult_class.tt

package Paws::ElastiCache::ModifyReplicationGroupShardConfigurationResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElastiCache::Types qw/ElastiCache_ReplicationGroup/;
  has ReplicationGroup => (is => 'ro', isa => ElastiCache_ReplicationGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReplicationGroup' => {
                                       'class' => 'Paws::ElastiCache::ReplicationGroup',
                                       'type' => 'ElastiCache_ReplicationGroup'
                                     }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ModifyReplicationGroupShardConfigurationResult

=head1 ATTRIBUTES


=head2 ReplicationGroup => ElastiCache_ReplicationGroup




=head2 _request_id => Str


=cut

