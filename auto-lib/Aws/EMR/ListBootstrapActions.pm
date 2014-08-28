
package Aws::EMR::ListBootstrapActions {
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBootstrapActions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::ListBootstrapActionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;