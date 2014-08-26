package Aws::OpsWorks::DataSource {
  use Moose;
  with ('AWS::API::ResultParser');
  has Arn => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
}
1
