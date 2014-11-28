
package Paws::CloudFront::GetInvalidationResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Invalidation => (is => 'ro', isa => 'Paws::CloudFront::Invalidation');

}
1;