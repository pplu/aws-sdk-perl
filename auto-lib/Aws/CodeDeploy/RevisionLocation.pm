package Aws::CodeDeploy::RevisionLocation {
  use Moose;
  has gitHubLocation => (is => 'ro', isa => 'Aws::CodeDeploy::GitHubLocation');
  has revisionType => (is => 'ro', isa => 'Str');
  has s3Location => (is => 'ro', isa => 'Aws::CodeDeploy::S3Location');
}
1;
