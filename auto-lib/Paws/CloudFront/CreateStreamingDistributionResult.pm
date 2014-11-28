
package Paws::CloudFront::CreateStreamingDistributionResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has ETag => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');
  has StreamingDistribution => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistribution');

}
1;