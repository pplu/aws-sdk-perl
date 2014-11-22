
package Paws::Support::ResolveCase {
  use Moose;
  has caseId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResolveCase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Support::ResolveCaseResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;