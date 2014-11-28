
use Paws::API;


package Paws::CloudFront {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'cloudfront');
  has version => (is => 'ro', isa => 'Str', default => '2014-10-21');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::SingleEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::RestXmlCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::RestXMLResponse');

  
  sub CreateCloudFrontOriginAccessIdentity2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::CreateCloudFrontOriginAccessIdentity2014_10_21', @_);
  }
  sub CreateDistribution2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::CreateDistribution2014_10_21', @_);
  }
  sub CreateInvalidation2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::CreateInvalidation2014_10_21', @_);
  }
  sub CreateStreamingDistribution2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::CreateStreamingDistribution2014_10_21', @_);
  }
  sub DeleteCloudFrontOriginAccessIdentity2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::DeleteCloudFrontOriginAccessIdentity2014_10_21', @_);
  }
  sub DeleteDistribution2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::DeleteDistribution2014_10_21', @_);
  }
  sub DeleteStreamingDistribution2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::DeleteStreamingDistribution2014_10_21', @_);
  }
  sub GetCloudFrontOriginAccessIdentity2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::GetCloudFrontOriginAccessIdentity2014_10_21', @_);
  }
  sub GetCloudFrontOriginAccessIdentityConfig2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfig2014_10_21', @_);
  }
  sub GetDistribution2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::GetDistribution2014_10_21', @_);
  }
  sub GetDistributionConfig2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::GetDistributionConfig2014_10_21', @_);
  }
  sub GetInvalidation2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::GetInvalidation2014_10_21', @_);
  }
  sub GetStreamingDistribution2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::GetStreamingDistribution2014_10_21', @_);
  }
  sub GetStreamingDistributionConfig2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::GetStreamingDistributionConfig2014_10_21', @_);
  }
  sub ListCloudFrontOriginAccessIdentities2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::ListCloudFrontOriginAccessIdentities2014_10_21', @_);
  }
  sub ListDistributions2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::ListDistributions2014_10_21', @_);
  }
  sub ListInvalidations2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::ListInvalidations2014_10_21', @_);
  }
  sub ListStreamingDistributions2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::ListStreamingDistributions2014_10_21', @_);
  }
  sub UpdateCloudFrontOriginAccessIdentity2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::UpdateCloudFrontOriginAccessIdentity2014_10_21', @_);
  }
  sub UpdateDistribution2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::UpdateDistribution2014_10_21', @_);
  }
  sub UpdateStreamingDistribution2014_10_21 {
    my $self = shift;
    return $self->do_call('Paws::CloudFront::UpdateStreamingDistribution2014_10_21', @_);
  }
}
1;