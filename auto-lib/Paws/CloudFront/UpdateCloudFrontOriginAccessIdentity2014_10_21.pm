
package Paws::CloudFront::UpdateCloudFrontOriginAccessIdentity2014_10_21 {
  use Moose;
  has CloudFrontOriginAccessIdentityConfig => (is => 'ro', isa => 'Paws::CloudFront::CloudFrontOriginAccessIdentityConfig', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IfMatch => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCloudFrontOriginAccessIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdateCloudFrontOriginAccessIdentityResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateCloudFrontOriginAccessIdentityResult');
}
1;