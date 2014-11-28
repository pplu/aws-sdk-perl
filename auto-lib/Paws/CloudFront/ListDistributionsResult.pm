
package Paws::CloudFront::ListDistributionsResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has DistributionList => (is => 'ro', isa => 'Paws::CloudFront::DistributionList');

}
1;