package Aws::RDS::CharacterSet {
  use Moose;
  with ('AWS::API::ResultParser');
  has CharacterSetDescription => (is => 'ro', isa => 'Str');
  has CharacterSetName => (is => 'ro', isa => 'Str');
}
1
