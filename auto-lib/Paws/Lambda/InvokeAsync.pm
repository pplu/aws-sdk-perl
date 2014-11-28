
package Paws::Lambda::InvokeAsync {
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', required => 1);
  has InvokeArgs => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InvokeAsync');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::InvokeAsyncResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'InvokeAsyncResult');
}
1;