
package Aws::EC2::DescribeRouteTables {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has RouteTableIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'RouteTableId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRouteTables');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeRouteTablesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
