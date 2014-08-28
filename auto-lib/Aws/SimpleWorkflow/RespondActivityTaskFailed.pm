
package Aws::SimpleWorkflow::RespondActivityTaskFailed {
  use Moose;
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskFailed');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
