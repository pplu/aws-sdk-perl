
package Paws::CloudFront::GetCloudFrontOriginAccessIdentityResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has CloudFrontOriginAccessIdentity => (is => 'ro', isa => 'Paws::CloudFront::CloudFrontOriginAccessIdentity');
  has ETag => (is => 'ro', isa => 'Str');

}
1;