
package Aws::ImportExport::GetStatus {
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ImportExport::GetStatusResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetStatusResult');
}
1;
  