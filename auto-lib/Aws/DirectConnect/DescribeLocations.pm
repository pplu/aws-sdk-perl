
package Aws::DirectConnect::DescribeLocations {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLocations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::Locations');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;