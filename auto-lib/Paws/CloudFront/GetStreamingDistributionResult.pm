
package Paws::CloudFront::GetStreamingDistributionResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has ETag => (is => 'ro', isa => 'Str');
  has StreamingDistribution => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistribution');

}
1;