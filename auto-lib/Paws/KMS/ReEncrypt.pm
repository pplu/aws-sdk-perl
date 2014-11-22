
package Paws::KMS::ReEncrypt {
  use Moose;
  has CiphertextBlob => (is => 'ro', isa => 'Str', required => 1);
  has DestinationEncryptionContext => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
  has DestinationKeyId => (is => 'ro', isa => 'Str', required => 1);
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str]');
  has SourceEncryptionContext => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReEncrypt');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::ReEncryptResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;