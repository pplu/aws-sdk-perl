
package Aws::OpsWorks::GetHostnameSuggestion {
  use Moose;
  has LayerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHostnameSuggestion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::GetHostnameSuggestionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;