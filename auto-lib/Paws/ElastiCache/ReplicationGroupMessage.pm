# Generated from callresult_class.tt

package Paws::ElastiCache::ReplicationGroupMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_ReplicationGroup/;
  has Marker => (is => 'ro', isa => Str);
  has ReplicationGroups => (is => 'ro', isa => ArrayRef[ElastiCache_ReplicationGroup]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReplicationGroups' => {
                                        'type' => 'ArrayRef[ElastiCache_ReplicationGroup]',
                                        'class' => 'Paws::ElastiCache::ReplicationGroup'
                                      }
             },
  'NameInRequest' => {
                       'ReplicationGroups' => 'ReplicationGroup'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ReplicationGroupMessage

=head1 ATTRIBUTES


=head2 Marker => Str

Provides an identifier to allow retrieval of paginated results.


=head2 ReplicationGroups => ArrayRef[ElastiCache_ReplicationGroup]

A list of replication groups. Each item in the list contains detailed
information about one replication group.


=head2 _request_id => Str


=cut

