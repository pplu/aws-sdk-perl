
package Paws::CloudFront::CreateCloudFrontOriginAccessIdentityResult;
  use Moose;
  has CloudFrontOriginAccessIdentity => (is => 'ro', isa => 'Paws::CloudFront::CloudFrontOriginAccessIdentity', traits => ['ParamInBody']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has Location => (is => 'ro', isa => 'Str', header_name => 'Location', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateCloudFrontOriginAccessIdentityResult

=head1 ATTRIBUTES


=head2 CloudFrontOriginAccessIdentity => L<Paws::CloudFront::CloudFrontOriginAccessIdentity>

The origin access identity's information.



=head2 ETag => Str

The current version of the origin access identity created.



=head2 Location => Str

The fully qualified URI of the new origin access identity just created.




=cut

