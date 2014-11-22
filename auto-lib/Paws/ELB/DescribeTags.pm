
package Paws::ELB::DescribeTags {
  use Moose;
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::DescribeTagsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTagsResult');
}
1;