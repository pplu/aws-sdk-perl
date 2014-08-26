package Aws::DirectConnect::Location {
  use Moose;
  with ('AWS::API::ResultParser');
  has locationCode => (is => 'ro', isa => 'Str');
  has locationName => (is => 'ro', isa => 'Str');
}
1
