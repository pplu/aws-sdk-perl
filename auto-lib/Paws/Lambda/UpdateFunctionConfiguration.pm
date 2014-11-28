
package Paws::Lambda::UpdateFunctionConfiguration {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has FunctionName => (is => 'ro', isa => 'Str', required => 1);
  has Handler => (is => 'ro', isa => 'Str');
  has MemorySize => (is => 'ro', isa => 'Int');
  has Role => (is => 'ro', isa => 'Str');
  has Timeout => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFunctionConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::FunctionConfiguration');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateFunctionConfigurationResult');
}
1;