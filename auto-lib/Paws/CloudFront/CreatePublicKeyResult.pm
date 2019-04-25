
package Paws::CloudFront::CreatePublicKeyResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'ETag');
  has Location => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Location');
  has PublicKey => (is => 'ro', isa => 'Paws::CloudFront::PublicKey');

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'PublicKey');
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

