
package Aws::DirectConnect::DescribeVirtualInterfaces {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str');
  has virtualInterfaceId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVirtualInterfaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::DescribeVirtualInterfacesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
