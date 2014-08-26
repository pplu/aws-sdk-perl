package Aws::EMR::ScriptBootstrapActionConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Path => (is => 'ro', isa => 'Str', required => 1);
}
1
