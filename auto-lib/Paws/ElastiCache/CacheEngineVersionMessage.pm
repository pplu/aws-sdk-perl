
package Paws::ElastiCache::CacheEngineVersionMessage;
  use Moose;
  has CacheEngineVersions => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::CacheEngineVersion]', request_name => 'CacheEngineVersion', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheEngineVersionMessage

=head1 ATTRIBUTES


=head2 CacheEngineVersions => ArrayRef[L<Paws::ElastiCache::CacheEngineVersion>]

A list of cache engine version details. Each element in the list
contains detailed information about one cache engine version.


=head2 Marker => Str

Provides an identifier to allow retrieval of paginated results.


=head2 _request_id => Str


=cut

