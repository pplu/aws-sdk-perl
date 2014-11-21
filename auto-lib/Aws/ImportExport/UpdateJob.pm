
package Aws::ImportExport::UpdateJob {
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has JobType => (is => 'ro', isa => 'Str', required => 1);
  has Manifest => (is => 'ro', isa => 'Str', required => 1);
  has ValidateOnly => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ImportExport::UpdateJobOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateJobResult');
}
1;