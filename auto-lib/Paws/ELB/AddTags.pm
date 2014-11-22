
package Paws::ELB::AddTags {
  use Moose;
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::AddTagsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AddTagsResult');
}
1;