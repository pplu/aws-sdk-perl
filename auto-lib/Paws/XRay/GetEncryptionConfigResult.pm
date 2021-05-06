
package Paws::XRay::GetEncryptionConfigResult;
  use Moose;
  has EncryptionConfig => (is => 'ro', isa => 'Paws::XRay::EncryptionConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetEncryptionConfigResult

=head1 ATTRIBUTES


=head2 EncryptionConfig => L<Paws::XRay::EncryptionConfig>

The encryption configuration document.


=head2 _request_id => Str


=cut

