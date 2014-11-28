
package Paws::Route53::ListTagsForResourcesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has ResourceTagSets => (is => 'ro', isa => 'ArrayRef[Paws::Route53::ResourceTagSet]', required => 1);

}
1;