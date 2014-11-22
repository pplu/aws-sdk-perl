
package Paws::StorageGateway::DescribeCache {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCache');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DescribeCacheOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;