
package Paws::CloudFront::GetPublicKeyResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'ETag');
  has PublicKey => (is => 'ro', isa => 'Paws::CloudFront::PublicKey');

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'PublicKey');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetPublicKeyResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the public key. For example: C<E2QWRUHAPOMQZL>.



=head2 PublicKey => L<Paws::CloudFront::PublicKey>

Return the public key.




=cut

