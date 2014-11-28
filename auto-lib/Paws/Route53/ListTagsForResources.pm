
package Paws::Route53::ListTagsForResources {
  use Moose;
  has ResourceIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListTagsForResourcesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListTagsForResourcesResult');
}
1;