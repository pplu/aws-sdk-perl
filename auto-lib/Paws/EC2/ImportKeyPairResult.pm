
package Paws::EC2::ImportKeyPairResult;
  use Moose;
  has KeyFingerprint => (is => 'ro', isa => 'Str', request_name => 'keyFingerprint', traits => ['NameInRequest',]);
  has KeyName => (is => 'ro', isa => 'Str', request_name => 'keyName', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportKeyPairResult

=head1 ATTRIBUTES


=head2 KeyFingerprint => Str

The MD5 public key fingerprint as specified in section 4 of RFC 4716.



=head2 KeyName => Str

The key pair name you provided.




=cut

