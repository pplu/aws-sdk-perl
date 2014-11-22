
package Paws::CodeDeploy::ListApplicationsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has applications => (is => 'ro', isa => 'ArrayRef[Str]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;