package Aws::EMR::Command {
  use Moose;
  with ('AWS::API::ResultParser');
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Name => (is => 'ro', isa => 'Str');
  has ScriptPath => (is => 'ro', isa => 'Str');
}
1
