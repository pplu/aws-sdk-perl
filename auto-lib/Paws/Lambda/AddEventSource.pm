
package Paws::Lambda::AddEventSource {
  use Moose;
  has BatchSize => (is => 'ro', isa => 'Int');
  has EventSource => (is => 'ro', isa => 'Str', required => 1);
  has FunctionName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::Lambda::Map');
  has Role => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddEventSource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::EventSourceConfiguration');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AddEventSourceResult');
}
1;