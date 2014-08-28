
package Aws::SimpleWorkflow::DescribeActivityTypeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has configuration => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityTypeConfiguration', required => 1);
  has typeInfo => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityTypeInfo', required => 1);

}
1;
