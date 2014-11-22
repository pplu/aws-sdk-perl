
package Paws::SimpleWorkflow::ActivityTypeDetail {
  use Moose;
  with 'Paws::API::ResultParser';
  has configuration => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityTypeConfiguration', required => 1);
  has typeInfo => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityTypeInfo', required => 1);

}
1;