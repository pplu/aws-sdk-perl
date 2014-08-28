
package Aws::AutoScaling::DescribeTags {
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::Filter]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeTagsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTagsResult');
}
1;
  