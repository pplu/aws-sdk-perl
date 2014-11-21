
package Aws::KMS::GenerateDataKeyWithoutPlaintext {
  use Moose;
  has EncryptionContext => (is => 'ro', isa => 'Aws::KMS::EncryptionContextType');
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str]');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has KeySpec => (is => 'ro', isa => 'Str');
  has NumberOfBytes => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateDataKeyWithoutPlaintext');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::KMS::GenerateDataKeyWithoutPlaintextResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;