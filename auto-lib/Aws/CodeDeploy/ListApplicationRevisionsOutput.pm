
package Aws::CodeDeploy::ListApplicationRevisionsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has nextToken => (is => 'ro', isa => 'Str');
  has revisions => (is => 'ro', isa => 'ArrayRef[Aws::CodeDeploy::RevisionLocation]');

}
1;