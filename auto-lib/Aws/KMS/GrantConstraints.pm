package Aws::KMS::GrantConstraints {
  use Moose;
  has EncryptionContextEquals => (is => 'ro', isa => 'Aws::KMS::EncryptionContextType');
  has EncryptionContextSubset => (is => 'ro', isa => 'Aws::KMS::EncryptionContextType');
}
1;
