
package Paws::CloudFront::GetStreamingDistributionConfigResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has ETag => (is => 'ro', isa => 'Str');
  has StreamingDistributionConfig => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistributionConfig');

}
1;