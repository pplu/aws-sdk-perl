
package Paws::SimpleWorkflow::WorkflowTypeDetail {
  use Moose;
  with 'Paws::API::ResultParser';
  has configuration => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowTypeConfiguration', required => 1);
  has typeInfo => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowTypeInfo', required => 1);

}
1;