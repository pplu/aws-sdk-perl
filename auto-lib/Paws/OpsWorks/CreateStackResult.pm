
package Paws::OpsWorks::CreateStackResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has StackId => (is => 'ro', isa => 'Str');

}
1;