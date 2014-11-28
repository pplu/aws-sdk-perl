
package Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfigResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has CloudFrontOriginAccessIdentityConfig => (is => 'ro', isa => 'Paws::CloudFront::CloudFrontOriginAccessIdentityConfig');
  has ETag => (is => 'ro', isa => 'Str');

}
1;