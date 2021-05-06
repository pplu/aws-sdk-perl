
package Paws::CloudFront::CreatePublicKeyResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has Location => (is => 'ro', isa => 'Str', header_name => 'Location', traits => ['ParamInHeader']);
  has PublicKey => (is => 'ro', isa => 'Paws::CloudFront::PublicKey', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreatePublicKeyResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the public key. For example: C<E2QWRUHAPOMQZL>.



=head2 Location => Str

The fully qualified URI of the new public key resource just created.
For example:
C<https://cloudfront.amazonaws.com/2010-11-01/cloudfront-public-key/EDFDVBD632BHDS5>.



=head2 PublicKey => L<Paws::CloudFront::PublicKey>

Returned when you add a public key.




=cut

