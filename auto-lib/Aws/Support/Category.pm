package Aws::Support::Category {
  use Moose;
  with ('AWS::API::ResultParser');
  has code => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str');
}
1
