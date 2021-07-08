
package Paws::EC2::KeyPair;
  use Moose;
  has KeyFingerprint => (is => 'ro', isa => 'Str', request_name => 'keyFingerprint', traits => ['NameInRequest',]);
  has KeyMaterial => (is => 'ro', isa => 'Str', request_name => 'keyMaterial', traits => ['NameInRequest',]);
  has KeyName => (is => 'ro', isa => 'Str', request_name => 'keyName', traits => ['NameInRequest',]);
  has KeyPairId => (is => 'ro', isa => 'Str', request_name => 'keyPairId', traits => ['NameInRequest',]);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::KeyPair

=head1 ATTRIBUTES


=head2 KeyFingerprint => Str

The SHA-1 digest of the DER encoded private key.


=head2 KeyMaterial => Str

An unencrypted PEM encoded RSA private key.


=head2 KeyName => Str

The name of the key pair.


=head2 KeyPairId => Str

The ID of the key pair.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags applied to the key pair.


=head2 _request_id => Str


=cut

