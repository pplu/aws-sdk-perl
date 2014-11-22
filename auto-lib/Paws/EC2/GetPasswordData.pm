
package Paws::EC2::GetPasswordData {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPasswordData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetPasswordDataResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;