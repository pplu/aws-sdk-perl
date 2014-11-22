package Paws::OpsWorks::AppAttributes {
  use Moose;
  with 'Paws::API::MapParser';
  has AutoBundleOnDeploy => (is => 'ro', isa => 'Str');
  has DocumentRoot => (is => 'ro', isa => 'Str');
  has RailsEnv => (is => 'ro', isa => 'Str');
}
1;
