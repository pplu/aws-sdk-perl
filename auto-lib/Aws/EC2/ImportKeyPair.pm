
package Aws::EC2::ImportKeyPair {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has KeyName => (is => 'ro', isa => 'Str', required => 1);
  has PublicKeyMaterial => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportKeyPair');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::ImportKeyPairResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
