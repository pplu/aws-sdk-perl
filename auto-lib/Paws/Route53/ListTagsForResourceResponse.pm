
package Paws::Route53::ListTagsForResourceResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has ResourceTagSet => (is => 'ro', isa => 'Paws::Route53::ResourceTagSet', required => 1);

}
1;