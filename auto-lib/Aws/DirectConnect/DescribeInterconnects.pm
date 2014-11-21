
package Aws::DirectConnect::DescribeInterconnects {
  use Moose;
  has interconnectId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInterconnects');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::Interconnects');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;