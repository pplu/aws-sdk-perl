
package Aws::EC2::DescribePlacementGroups {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'GroupName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePlacementGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribePlacementGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
