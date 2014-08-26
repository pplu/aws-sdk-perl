package Aws::OpsWorks::ChefConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has BerkshelfVersion => (is => 'ro', isa => 'Str');
  has ManageBerkshelf => (is => 'ro', isa => 'Bool');
}
1
