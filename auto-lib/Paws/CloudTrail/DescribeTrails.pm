
package Paws::CloudTrail::DescribeTrails {
  use Moose;
  has trailNameList => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrails');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::DescribeTrailsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;