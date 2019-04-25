
package Paws::ElastiCache::PurchaseReservedCacheNodesOffering;
  use Moose;
  has CacheNodeCount => (is => 'ro', isa => 'Int');
  has ReservedCacheNodeId => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferingId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedCacheNodesOffering');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::PurchaseReservedCacheNodesOfferingResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PurchaseReservedCacheNodesOfferingResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::PurchaseReservedCacheNodesOffering - Arguments for method PurchaseReservedCacheNodesOffering on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PurchaseReservedCacheNodesOffering on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method PurchaseReservedCacheNodesOffering.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PurchaseReservedCacheNodesOffering.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $PurchaseReservedCacheNodesOfferingResult =
      $elasticache->PurchaseReservedCacheNodesOffering(
      ReservedCacheNodesOfferingId => 'MyString',
      CacheNodeCount               => 1,             # OPTIONAL
      ReservedCacheNodeId          => 'MyString',    # OPTIONAL
      );

    # Results:
    my $ReservedCacheNode =
      $PurchaseReservedCacheNodesOfferingResult->ReservedCacheNode;

# Returns a L<Paws::ElastiCache::PurchaseReservedCacheNodesOfferingResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/PurchaseReservedCacheNodesOffering>

=head1 ATTRIBUTES


=head2 CacheNodeCount => Int

The number of cache node instances to reserve.

Default: C<1>



=head2 ReservedCacheNodeId => Str

A customer-specified identifier to track this reservation.

The Reserved Cache Node ID is an unique customer-specified identifier
to track this reservation. If this parameter is not specified,
ElastiCache automatically generates an identifier for the reservation.

Example: myreservationID



=head2 B<REQUIRED> ReservedCacheNodesOfferingId => Str

The ID of the reserved cache node offering to purchase.

Example: C<438012d3-4052-4cc7-b2e3-8d3372e0e706>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PurchaseReservedCacheNodesOffering in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

