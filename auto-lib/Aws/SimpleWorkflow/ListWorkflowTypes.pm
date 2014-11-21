
package Aws::SimpleWorkflow::ListWorkflowTypes {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has name => (is => 'ro', isa => 'Str');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has registrationStatus => (is => 'ro', isa => 'Str', required => 1);
  has reverseOrder => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkflowTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::WorkflowTypeInfos');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;