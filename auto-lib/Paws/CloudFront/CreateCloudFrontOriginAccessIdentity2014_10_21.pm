
package Paws::CloudFront::CreateCloudFrontOriginAccessIdentity2014_10_21 {
  use Moose;
  has CloudFrontOriginAccessIdentityConfig => (is => 'ro', isa => 'Paws::CloudFront::CloudFrontOriginAccessIdentityConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCloudFrontOriginAccessIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateCloudFrontOriginAccessIdentityResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCloudFrontOriginAccessIdentityResult');
}
1;