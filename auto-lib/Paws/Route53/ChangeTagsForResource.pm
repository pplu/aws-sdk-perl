
package Paws::Route53::ChangeTagsForResource {
  use Moose;
  has AddTags => (is => 'ro', isa => 'ArrayRef[Paws::Route53::Tag]');
  has RemoveTagKeys => (is => 'ro', isa => 'ArrayRef[Str]');
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ChangeTagsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ChangeTagsForResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ChangeTagsForResourceResult');
}
1;