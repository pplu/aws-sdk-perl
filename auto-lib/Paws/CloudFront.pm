
use Paws::API;


package Paws::CloudFront {
  warn "Paws::CloudFront is not stable / supported / entirely developed";
  use Moose;
  sub service { 'cloudfront' }
  sub version { '2014-11-06' }
  sub flattened_arrays { 0 }

  with 'Paws::API::Caller', 'Paws::API::SingleEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::RestXmlCaller', 'Paws::Net::RestXMLResponse';

  
  sub CreateCloudFrontOriginAccessIdentity2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateCloudFrontOriginAccessIdentity2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDistribution2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateDistribution2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInvalidation2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateInvalidation2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStreamingDistribution2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateStreamingDistribution2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCloudFrontOriginAccessIdentity2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteCloudFrontOriginAccessIdentity2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDistribution2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteDistribution2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStreamingDistribution2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteStreamingDistribution2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCloudFrontOriginAccessIdentity2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetCloudFrontOriginAccessIdentity2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCloudFrontOriginAccessIdentityConfig2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfig2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDistribution2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetDistribution2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDistributionConfig2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetDistributionConfig2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInvalidation2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetInvalidation2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStreamingDistribution2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetStreamingDistribution2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStreamingDistributionConfig2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetStreamingDistributionConfig2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCloudFrontOriginAccessIdentities2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListCloudFrontOriginAccessIdentities2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributions2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributions2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInvalidations2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListInvalidations2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStreamingDistributions2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListStreamingDistributions2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCloudFrontOriginAccessIdentity2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateCloudFrontOriginAccessIdentity2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDistribution2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateDistribution2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStreamingDistribution2014_11_06 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateStreamingDistribution2014_11_06', @_);
    return $self->caller->do_call($self, $call_object);
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



=head1 METHODS

=head2 CreateCloudFrontOriginAccessIdentity2014_11_06()

  Arguments described in: L<Paws::CloudFront::CreateCloudFrontOriginAccessIdentity2014_11_06>

  Returns: nothing

  


=head2 CreateDistribution2014_11_06()

  Arguments described in: L<Paws::CloudFront::CreateDistribution2014_11_06>

  Returns: nothing

  


=head2 CreateInvalidation2014_11_06()

  Arguments described in: L<Paws::CloudFront::CreateInvalidation2014_11_06>

  Returns: nothing

  


=head2 CreateStreamingDistribution2014_11_06()

  Arguments described in: L<Paws::CloudFront::CreateStreamingDistribution2014_11_06>

  Returns: nothing

  


=head2 DeleteCloudFrontOriginAccessIdentity2014_11_06()

  Arguments described in: L<Paws::CloudFront::DeleteCloudFrontOriginAccessIdentity2014_11_06>

  Returns: nothing

  


=head2 DeleteDistribution2014_11_06()

  Arguments described in: L<Paws::CloudFront::DeleteDistribution2014_11_06>

  Returns: nothing

  


=head2 DeleteStreamingDistribution2014_11_06()

  Arguments described in: L<Paws::CloudFront::DeleteStreamingDistribution2014_11_06>

  Returns: nothing

  


=head2 GetCloudFrontOriginAccessIdentity2014_11_06()

  Arguments described in: L<Paws::CloudFront::GetCloudFrontOriginAccessIdentity2014_11_06>

  Returns: nothing

  


=head2 GetCloudFrontOriginAccessIdentityConfig2014_11_06()

  Arguments described in: L<Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfig2014_11_06>

  Returns: nothing

  


=head2 GetDistribution2014_11_06()

  Arguments described in: L<Paws::CloudFront::GetDistribution2014_11_06>

  Returns: nothing

  


=head2 GetDistributionConfig2014_11_06()

  Arguments described in: L<Paws::CloudFront::GetDistributionConfig2014_11_06>

  Returns: nothing

  


=head2 GetInvalidation2014_11_06()

  Arguments described in: L<Paws::CloudFront::GetInvalidation2014_11_06>

  Returns: nothing

  


=head2 GetStreamingDistribution2014_11_06()

  Arguments described in: L<Paws::CloudFront::GetStreamingDistribution2014_11_06>

  Returns: nothing

  


=head2 GetStreamingDistributionConfig2014_11_06()

  Arguments described in: L<Paws::CloudFront::GetStreamingDistributionConfig2014_11_06>

  Returns: nothing

  


=head2 ListCloudFrontOriginAccessIdentities2014_11_06()

  Arguments described in: L<Paws::CloudFront::ListCloudFrontOriginAccessIdentities2014_11_06>

  Returns: nothing

  


=head2 ListDistributions2014_11_06()

  Arguments described in: L<Paws::CloudFront::ListDistributions2014_11_06>

  Returns: nothing

  


=head2 ListInvalidations2014_11_06()

  Arguments described in: L<Paws::CloudFront::ListInvalidations2014_11_06>

  Returns: nothing

  


=head2 ListStreamingDistributions2014_11_06()

  Arguments described in: L<Paws::CloudFront::ListStreamingDistributions2014_11_06>

  Returns: nothing

  


=head2 UpdateCloudFrontOriginAccessIdentity2014_11_06()

  Arguments described in: L<Paws::CloudFront::UpdateCloudFrontOriginAccessIdentity2014_11_06>

  Returns: nothing

  


=head2 UpdateDistribution2014_11_06()

  Arguments described in: L<Paws::CloudFront::UpdateDistribution2014_11_06>

  Returns: nothing

  


=head2 UpdateStreamingDistribution2014_11_06()

  Arguments described in: L<Paws::CloudFront::UpdateStreamingDistribution2014_11_06>

  Returns: nothing

  


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

