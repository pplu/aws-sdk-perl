
package Aws::ELB::RemoveTags {
  use Moose;
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::ELB::TagKeyOnly]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::RemoveTagsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveTagsResult');
}
1;