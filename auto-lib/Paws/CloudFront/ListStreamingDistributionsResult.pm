
package Paws::CloudFront::ListStreamingDistributionsResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has StreamingDistributionList => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistributionList');

}
1;