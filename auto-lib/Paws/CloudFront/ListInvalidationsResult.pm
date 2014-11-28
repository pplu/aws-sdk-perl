
package Paws::CloudFront::ListInvalidationsResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has InvalidationList => (is => 'ro', isa => 'Paws::CloudFront::InvalidationList');

}
1;