
package Paws::CloudFront::CreateInvalidationResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Invalidation => (is => 'ro', isa => 'Paws::CloudFront::Invalidation');
  has Location => (is => 'ro', isa => 'Str');

}
1;