
package Paws::CloudFormation::UpdateStackOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has StackId => (is => 'ro', isa => 'Str');

}
1;