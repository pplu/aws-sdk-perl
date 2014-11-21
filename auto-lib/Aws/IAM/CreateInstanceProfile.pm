
package Aws::IAM::CreateInstanceProfile {
  use Moose;
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstanceProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::CreateInstanceProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateInstanceProfileResult');
}
1;