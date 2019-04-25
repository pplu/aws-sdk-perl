
package Paws::ElastiCache::ListAllowedNodeTypeModifications;
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAllowedNodeTypeModifications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::AllowedNodeTypeModificationsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListAllowedNodeTypeModificationsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ListAllowedNodeTypeModifications - Arguments for method ListAllowedNodeTypeModifications on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAllowedNodeTypeModifications on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method ListAllowedNodeTypeModifications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAllowedNodeTypeModifications.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $AllowedNodeTypeModificationsMessage =
      $elasticache->ListAllowedNodeTypeModifications(
      CacheClusterId     => 'MyString',    # OPTIONAL
      ReplicationGroupId => 'MyString',    # OPTIONAL
      );

    # Results:
    my $ScaleUpModifications =
      $AllowedNodeTypeModificationsMessage->ScaleUpModifications;

   # Returns a L<Paws::ElastiCache::AllowedNodeTypeModificationsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/ListAllowedNodeTypeModifications>

=head1 ATTRIBUTES


=head2 CacheClusterId => Str

The name of the cluster you want to scale up to a larger node instanced
type. ElastiCache uses the cluster id to identify the current node type
of this cluster and from that to create a list of node types you can
scale up to.

You must provide a value for either the C<CacheClusterId> or the
C<ReplicationGroupId>.



=head2 ReplicationGroupId => Str

The name of the replication group want to scale up to a larger node
type. ElastiCache uses the replication group id to identify the current
node type being used by this replication group, and from that to create
a list of node types you can scale up to.

You must provide a value for either the C<CacheClusterId> or the
C<ReplicationGroupId>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAllowedNodeTypeModifications in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

