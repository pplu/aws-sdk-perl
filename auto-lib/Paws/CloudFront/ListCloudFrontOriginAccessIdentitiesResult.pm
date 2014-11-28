
package Paws::CloudFront::ListCloudFrontOriginAccessIdentitiesResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has CloudFrontOriginAccessIdentityList => (is => 'ro', isa => 'Paws::CloudFront::CloudFrontOriginAccessIdentityList');

}
1;