
package Paws::CodeDeploy::ListApplicationRevisionsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has nextToken => (is => 'ro', isa => 'Str');
  has revisions => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::RevisionLocation]');

}
1;