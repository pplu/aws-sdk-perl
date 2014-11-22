
package Paws::EC2::DescribeAddresses {
  use Moose;
  has AllocationIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'AllocationId' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has PublicIps => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'PublicIp' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAddresses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeAddressesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;