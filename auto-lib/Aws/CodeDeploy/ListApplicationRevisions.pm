
package Aws::CodeDeploy::ListApplicationRevisions {
  use Moose;
  has applicationName => (is => 'ro', isa => 'Str', required => 1);
  has deployed => (is => 'ro', isa => 'Str');
  has nextToken => (is => 'ro', isa => 'Str');
  has s3Bucket => (is => 'ro', isa => 'Str');
  has s3KeyPrefix => (is => 'ro', isa => 'Str');
  has sortBy => (is => 'ro', isa => 'Str');
  has sortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplicationRevisions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CodeDeploy::ListApplicationRevisionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;