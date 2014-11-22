
package Paws::EC2::GetConsoleOutput {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConsoleOutput');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetConsoleOutputResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;