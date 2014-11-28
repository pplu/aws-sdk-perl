
package Paws::Lambda::GetFunction {
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFunction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::GetFunctionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetFunctionResult');
}
1;