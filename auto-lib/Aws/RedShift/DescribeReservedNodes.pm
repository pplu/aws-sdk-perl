
package Aws::RedShift::DescribeReservedNodes {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ReservedNodeId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::DescribeReservedNodesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodesResult');
}
1;
