
package Paws::StorageGateway::DescribeCacheOutput;
  use Moose;
  has CacheAllocatedInBytes => (is => 'ro', isa => 'Int');
  has CacheDirtyPercentage => (is => 'ro', isa => 'Num');
  has CacheHitPercentage => (is => 'ro', isa => 'Num');
  has CacheMissPercentage => (is => 'ro', isa => 'Num');
  has CacheUsedPercentage => (is => 'ro', isa => 'Num');
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has GatewayARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeCacheOutput

=head1 ATTRIBUTES


=head2 CacheAllocatedInBytes => Int

The amount of cache in bytes allocated to a gateway.


=head2 CacheDirtyPercentage => Num

The file share's contribution to the overall percentage of the
gateway's cache that has not been persisted to AWS. The sample is taken
at the end of the reporting period.


=head2 CacheHitPercentage => Num

Percent of application read operations from the file shares that are
served from cache. The sample is taken at the end of the reporting
period.


=head2 CacheMissPercentage => Num

Percent of application read operations from the file shares that are
not served from cache. The sample is taken at the end of the reporting
period.


=head2 CacheUsedPercentage => Num

Percent use of the gateway's cache storage. This metric applies only to
the gateway-cached volume setup. The sample is taken at the end of the
reporting period.


=head2 DiskIds => ArrayRef[Str|Undef]

An array of strings that identify disks that are to be configured as
working storage. Each string has a minimum length of 1 and maximum
length of 300. You can get the disk IDs from the ListLocalDisks API.


=head2 GatewayARN => Str




=head2 _request_id => Str


=cut

1;