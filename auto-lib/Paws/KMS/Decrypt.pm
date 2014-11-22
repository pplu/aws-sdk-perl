
package Paws::KMS::Decrypt {
  use Moose;
  has CiphertextBlob => (is => 'ro', isa => 'Str', required => 1);
  has EncryptionContext => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Decrypt');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::DecryptResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;