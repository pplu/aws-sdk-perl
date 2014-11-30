
package Paws::CloudFront::CreateCloudFrontOriginAccessIdentity2014_10_21 {
  use Moose;
  has CloudFrontOriginAccessIdentityConfig => (is => 'ro', isa => 'Paws::CloudFront::CloudFrontOriginAccessIdentityConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCloudFrontOriginAccessIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateCloudFrontOriginAccessIdentityResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCloudFrontOriginAccessIdentityResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateCloudFrontOriginAccessIdentityResult

=head1 ATTRIBUTES

=head2 B<REQUIRED> CloudFrontOriginAccessIdentityConfig => Paws::CloudFront::CloudFrontOriginAccessIdentityConfig

  

The origin access identity's configuration information.











=cut

