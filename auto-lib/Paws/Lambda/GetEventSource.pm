
package Paws::Lambda::GetEventSource {
  use Moose;
  has UUID => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEventSource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::EventSourceConfiguration');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetEventSourceResult');
}
1;