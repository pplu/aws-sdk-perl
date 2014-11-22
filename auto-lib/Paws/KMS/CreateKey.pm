
package Paws::KMS::CreateKey {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has KeyUsage => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::CreateKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;