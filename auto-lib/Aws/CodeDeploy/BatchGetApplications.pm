
package Aws::CodeDeploy::BatchGetApplications {
  use Moose;
  has applicationNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetApplications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CodeDeploy::BatchGetApplicationsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;