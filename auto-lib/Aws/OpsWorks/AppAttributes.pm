package Aws::OpsWorks::AppAttributes {
  use Moose;
  with 'AWS::API::MapParser';
  has AutoBundleOnDeploy => (is => 'ro', isa => 'Str');
  has DocumentRoot => (is => 'ro', isa => 'Str');
  has RailsEnv => (is => 'ro', isa => 'Str');
}
1;
