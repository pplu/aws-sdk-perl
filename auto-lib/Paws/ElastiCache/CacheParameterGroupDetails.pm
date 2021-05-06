
package Paws::ElastiCache::CacheParameterGroupDetails;
  use Moose;
  has CacheNodeTypeSpecificParameters => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::CacheNodeTypeSpecificParameter]', request_name => 'CacheNodeTypeSpecificParameter', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::Parameter]', request_name => 'Parameter', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheParameterGroupDetails

=head1 ATTRIBUTES


=head2 CacheNodeTypeSpecificParameters => ArrayRef[L<Paws::ElastiCache::CacheNodeTypeSpecificParameter>]

A list of parameters specific to a particular cache node type. Each
element in the list contains detailed information about one parameter.


=head2 Marker => Str

Provides an identifier to allow retrieval of paginated results.


=head2 Parameters => ArrayRef[L<Paws::ElastiCache::Parameter>]

A list of Parameter instances.


=head2 _request_id => Str


=cut

