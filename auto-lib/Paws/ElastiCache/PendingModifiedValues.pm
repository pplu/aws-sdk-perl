package Paws::ElastiCache::PendingModifiedValues;
  use Moose;
  has CacheNodeIdsToRemove => (is => 'ro', isa => 'ArrayRef[Str]');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NumCacheNodes => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::PendingModifiedValues

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::PendingModifiedValues object:

  $service_obj->Method(Att1 => { CacheNodeIdsToRemove => $value, ..., NumCacheNodes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::PendingModifiedValues object:

  $result = $service_obj->Method(...);
  $result->Att1->CacheNodeIdsToRemove

=head1 ATTRIBUTES

=head2 CacheNodeIdsToRemove => ArrayRef[Str]

  A list of cache node IDs that are being removed (or will be removed)
from the cache cluster. A node ID is a numeric identifier (0001, 0002,
etc.).

=head2 EngineVersion => Str

  The new cache engine version that the cache cluster will run.

=head2 NumCacheNodes => Int

  The new number of cache nodes for the cache cluster.

For clusters running Redis, this value must be 1. For clusters running
Memcached, this value must be between 1 and 20.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

