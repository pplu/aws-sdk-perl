
package Paws::IAM::GetInstanceProfile {
  use Moose;
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInstanceProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetInstanceProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetInstanceProfileResult');
}
1;