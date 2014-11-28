
package Paws::Lambda::ListFunctions {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFunctions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::ListFunctionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListFunctionsResult');
}
1;