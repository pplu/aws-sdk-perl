
package Aws::KMS::GenerateRandom {
  use Moose;
  has NumberOfBytes => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateRandom');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::KMS::GenerateRandomResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;