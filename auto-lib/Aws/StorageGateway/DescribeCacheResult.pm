
package Aws::StorageGateway::DescribeCacheResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheAllocatedInBytes => (is => 'ro', isa => 'Num');
  has CacheDirtyPercentage => (is => 'ro', isa => 'Num');
  has CacheHitPercentage => (is => 'ro', isa => 'Num');
  has CacheMissPercentage => (is => 'ro', isa => 'Num');
  has CacheUsedPercentage => (is => 'ro', isa => 'Num');
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has GatewayARN => (is => 'ro', isa => 'Str');

}
1;
