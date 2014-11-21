
package Aws::SimpleWorkflow::WorkflowTypeInfos {
  use Moose;
  with 'AWS::API::ResultParser';
  has nextPageToken => (is => 'ro', isa => 'Str');
  has typeInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::WorkflowTypeInfo]', required => 1);

}
1;