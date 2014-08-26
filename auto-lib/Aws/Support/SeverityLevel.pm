package Aws::Support::SeverityLevel {
  use Moose;
  with ('AWS::API::ResultParser');
  has code => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str');
}
1
