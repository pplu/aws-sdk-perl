# Generated from default/object.tt
package Paws::ElastiCache::NodeSnapshot;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElastiCache::Types qw/ElastiCache_NodeGroupConfiguration/;
  has CacheClusterId => (is => 'ro', isa => Str);
  has CacheNodeCreateTime => (is => 'ro', isa => Str);
  has CacheNodeId => (is => 'ro', isa => Str);
  has CacheSize => (is => 'ro', isa => Str);
  has NodeGroupConfiguration => (is => 'ro', isa => ElastiCache_NodeGroupConfiguration);
  has NodeGroupId => (is => 'ro', isa => Str);
  has SnapshotCreateTime => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CacheNodeId' => {
                                  'type' => 'Str'
                                },
               'NodeGroupConfiguration' => {
                                             'class' => 'Paws::ElastiCache::NodeGroupConfiguration',
                                             'type' => 'ElastiCache_NodeGroupConfiguration'
                                           },
               'SnapshotCreateTime' => {
                                         'type' => 'Str'
                                       },
               'CacheSize' => {
                                'type' => 'Str'
                              },
               'NodeGroupId' => {
                                  'type' => 'Str'
                                },
               'CacheNodeCreateTime' => {
                                          'type' => 'Str'
                                        },
               'CacheClusterId' => {
                                     'type' => 'Str'
                                   }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::NodeSnapshot

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::NodeSnapshot object:

  $service_obj->Method(Att1 => { CacheClusterId => $value, ..., SnapshotCreateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::NodeSnapshot object:

  $result = $service_obj->Method(...);
  $result->Att1->CacheClusterId

=head1 DESCRIPTION

Represents an individual cache node in a snapshot of a cluster.

=head1 ATTRIBUTES


=head2 CacheClusterId => Str

  A unique identifier for the source cluster.


=head2 CacheNodeCreateTime => Str

  The date and time when the cache node was created in the source
cluster.


=head2 CacheNodeId => Str

  The cache node identifier for the node in the source cluster.


=head2 CacheSize => Str

  The size of the cache on the source cache node.


=head2 NodeGroupConfiguration => ElastiCache_NodeGroupConfiguration

  The configuration for the source node group (shard).


=head2 NodeGroupId => Str

  A unique identifier for the source node group (shard).


=head2 SnapshotCreateTime => Str

  The date and time when the source node's metadata and cache data set
was obtained for the snapshot.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

