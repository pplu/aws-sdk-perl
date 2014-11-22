
package Paws::EMR::RunJobFlowOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has JobFlowId => (is => 'ro', isa => 'Str');

}
1;