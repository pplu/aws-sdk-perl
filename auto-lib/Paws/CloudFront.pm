
use Paws::API;


package Paws::CloudFront {
  warn "Paws::CloudFront is not stable / supported / entirely developed";
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

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront - Perl Interface to AWS Amazon CloudFront

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



Amazon CloudFront

CloudFront is a web service that speeds up distribution of your static
and dynamic web content, for example, .html, .css, .php, and image
files, to end users. CloudFront delivers your content through a
worldwide network of data centers called edge locations. When a user
requests content that you're serving with CloudFront, the user is
routed to the edge location that provides the lowest latency (time
delay), so content is delivered with the best possible performance. If
the content is already in edge location with the lowest latency,
CloudFront delivers it immediately. If the content is not currently in
that edge location, CloudFront retrieves it from an Amazon S3 bucket or
an HTTP server (for example, a web server) that you have identified as
the source for the definitive version of your content.

loudFront speeds up the distribution of your content by routing each
user request to the edge location that can best serve your content.
Typically, this is the CloudFront edge location that provides the
lowest latency. This dramatically reduces the number of networks that
your users' requests must pass through, which improves performance.
Users get lower latency.the time it takes to load the first byte of the
object.and higher data transfer rates. You also get increased
reliability and availability because copies of your objects are now
held in multiple edge locations around the world.










=head1 METHODS

=head2 CreateCloudFrontOriginAccessIdentity2014_10_21()

  Arguments described in: L<Paws::CloudFront::CreateCloudFrontOriginAccessIdentity2014_10_21>

  Returns: nothing

  


=head2 CreateDistribution2014_10_21()

  Arguments described in: L<Paws::CloudFront::CreateDistribution2014_10_21>

  Returns: nothing

  


=head2 CreateInvalidation2014_10_21()

  Arguments described in: L<Paws::CloudFront::CreateInvalidation2014_10_21>

  Returns: nothing

  


=head2 CreateStreamingDistribution2014_10_21()

  Arguments described in: L<Paws::CloudFront::CreateStreamingDistribution2014_10_21>

  Returns: nothing

  


=head2 DeleteCloudFrontOriginAccessIdentity2014_10_21()

  Arguments described in: L<Paws::CloudFront::DeleteCloudFrontOriginAccessIdentity2014_10_21>

  Returns: nothing

  


=head2 DeleteDistribution2014_10_21()

  Arguments described in: L<Paws::CloudFront::DeleteDistribution2014_10_21>

  Returns: nothing

  


=head2 DeleteStreamingDistribution2014_10_21()

  Arguments described in: L<Paws::CloudFront::DeleteStreamingDistribution2014_10_21>

  Returns: nothing

  


=head2 GetCloudFrontOriginAccessIdentity2014_10_21()

  Arguments described in: L<Paws::CloudFront::GetCloudFrontOriginAccessIdentity2014_10_21>

  Returns: nothing

  


=head2 GetCloudFrontOriginAccessIdentityConfig2014_10_21()

  Arguments described in: L<Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfig2014_10_21>

  Returns: nothing

  


=head2 GetDistribution2014_10_21()

  Arguments described in: L<Paws::CloudFront::GetDistribution2014_10_21>

  Returns: nothing

  


=head2 GetDistributionConfig2014_10_21()

  Arguments described in: L<Paws::CloudFront::GetDistributionConfig2014_10_21>

  Returns: nothing

  


=head2 GetInvalidation2014_10_21()

  Arguments described in: L<Paws::CloudFront::GetInvalidation2014_10_21>

  Returns: nothing

  


=head2 GetStreamingDistribution2014_10_21()

  Arguments described in: L<Paws::CloudFront::GetStreamingDistribution2014_10_21>

  Returns: nothing

  


=head2 GetStreamingDistributionConfig2014_10_21()

  Arguments described in: L<Paws::CloudFront::GetStreamingDistributionConfig2014_10_21>

  Returns: nothing

  


=head2 ListCloudFrontOriginAccessIdentities2014_10_21()

  Arguments described in: L<Paws::CloudFront::ListCloudFrontOriginAccessIdentities2014_10_21>

  Returns: nothing

  


=head2 ListDistributions2014_10_21()

  Arguments described in: L<Paws::CloudFront::ListDistributions2014_10_21>

  Returns: nothing

  


=head2 ListInvalidations2014_10_21()

  Arguments described in: L<Paws::CloudFront::ListInvalidations2014_10_21>

  Returns: nothing

  


=head2 ListStreamingDistributions2014_10_21()

  Arguments described in: L<Paws::CloudFront::ListStreamingDistributions2014_10_21>

  Returns: nothing

  


=head2 UpdateCloudFrontOriginAccessIdentity2014_10_21()

  Arguments described in: L<Paws::CloudFront::UpdateCloudFrontOriginAccessIdentity2014_10_21>

  Returns: nothing

  


=head2 UpdateDistribution2014_10_21()

  Arguments described in: L<Paws::CloudFront::UpdateDistribution2014_10_21>

  Returns: nothing

  


=head2 UpdateStreamingDistribution2014_10_21()

  Arguments described in: L<Paws::CloudFront::UpdateStreamingDistribution2014_10_21>

  Returns: nothing

  


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

