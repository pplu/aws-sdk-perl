
package Paws::SimpleWorkflow::Run {
  use Moose;
  with 'Paws::API::ResultParser';
  has runId => (is => 'ro', isa => 'Str');

}
1;