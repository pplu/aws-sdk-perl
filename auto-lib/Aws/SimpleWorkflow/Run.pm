
package Aws::SimpleWorkflow::Run {
  use Moose;
  with 'AWS::API::ResultParser';
  has runId => (is => 'ro', isa => 'Str');

}
1;