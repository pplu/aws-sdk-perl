
package Paws::CloudFront::GetDistributionConfigResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has DistributionConfig => (is => 'ro', isa => 'Paws::CloudFront::DistributionConfig');
  has ETag => (is => 'ro', isa => 'Str');

}
1;