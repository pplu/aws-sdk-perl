
package Paws::DirectConnect::DescribeVirtualGateways {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVirtualGateways');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::VirtualGateways');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;