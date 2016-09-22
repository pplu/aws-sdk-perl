
package Paws::CloudFront::GetCloudFrontOriginAccessIdentityResult;
  use Moose;
  has CloudFrontOriginAccessIdentity => (is => 'ro', isa => 'Paws::CloudFront::CloudFrontOriginAccessIdentity');
  has ETag => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetCloudFrontOriginAccessIdentityResult

=head1 ATTRIBUTES


=head2 CloudFrontOriginAccessIdentity => L<Paws::CloudFront::CloudFrontOriginAccessIdentity>

The origin access identity's information.



=head2 ETag => Str

The current version of the origin access identity's information. For
example: E2QWRUHAPOMQZL.




=cut

