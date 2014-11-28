
package Paws::Lambda::ListEventSources {
  use Moose;
  has EventSourceArn => (is => 'ro', isa => 'Str');
  has FunctionName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEventSources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::ListEventSourcesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListEventSourcesResult');
}
1;