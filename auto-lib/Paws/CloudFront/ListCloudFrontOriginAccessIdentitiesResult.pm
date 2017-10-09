
package Paws::CloudFront::ListCloudFrontOriginAccessIdentitiesResult;
  use Moose;
  has CloudFrontOriginAccessIdentityList => (is => 'ro', isa => 'Paws::CloudFront::CloudFrontOriginAccessIdentityList');

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'CloudFrontOriginAccessIdentityList');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListCloudFrontOriginAccessIdentitiesResult

=head1 ATTRIBUTES


=head2 CloudFrontOriginAccessIdentityList => L<Paws::CloudFront::CloudFrontOriginAccessIdentityList>

The C<CloudFrontOriginAccessIdentityList> type.




=cut

