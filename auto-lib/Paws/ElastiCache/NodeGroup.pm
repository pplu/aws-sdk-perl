# Generated from default/object.tt
package Paws::ElastiCache::NodeGroup;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_NodeGroupMember ElastiCache_Endpoint/;
  has NodeGroupId => (is => 'ro', isa => Str);
  has NodeGroupMembers => (is => 'ro', isa => ArrayRef[ElastiCache_NodeGroupMember]);
  has PrimaryEndpoint => (is => 'ro', isa => ElastiCache_Endpoint);
  has ReaderEndpoint => (is => 'ro', isa => ElastiCache_Endpoint);
  has Slots => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PrimaryEndpoint' => {
                                      'type' => 'ElastiCache_Endpoint',
                                      'class' => 'Paws::ElastiCache::Endpoint'
                                    },
               'Status' => {
                             'type' => 'Str'
                           },
               'NodeGroupId' => {
                                  'type' => 'Str'
                                },
               'NodeGroupMembers' => {
                                       'type' => 'ArrayRef[ElastiCache_NodeGroupMember]',
                                       'class' => 'Paws::ElastiCache::NodeGroupMember'
                                     },
               'Slots' => {
                            'type' => 'Str'
                          },
               'ReaderEndpoint' => {
                                     'type' => 'ElastiCache_Endpoint',
                                     'class' => 'Paws::ElastiCache::Endpoint'
                                   }
             },
  'NameInRequest' => {
                       'NodeGroupMembers' => 'NodeGroupMember'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::NodeGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::NodeGroup object:

  $service_obj->Method(Att1 => { NodeGroupId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::NodeGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->NodeGroupId

=head1 DESCRIPTION

Represents a collection of cache nodes in a replication group. One node
in the node group is the read/write primary node. All the other nodes
are read-only Replica nodes.

=head1 ATTRIBUTES


=head2 NodeGroupId => Str

  The identifier for the node group (shard). A Redis (cluster mode
disabled) replication group contains only 1 node group; therefore, the
node group ID is 0001. A Redis (cluster mode enabled) replication group
contains 1 to 90 node groups numbered 0001 to 0090. Optionally, the
user can provide the id for a node group.


=head2 NodeGroupMembers => ArrayRef[ElastiCache_NodeGroupMember]

  A list containing information about individual nodes within the node
group (shard).


=head2 PrimaryEndpoint => ElastiCache_Endpoint

  The endpoint of the primary node in this node group (shard).


=head2 ReaderEndpoint => ElastiCache_Endpoint

  The endpoint of the replica nodes in this node group (shard).


=head2 Slots => Str

  The keyspace for this node group (shard).


=head2 Status => Str

  The current state of this replication group - C<creating>,
C<available>, etc.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

