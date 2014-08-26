package Aws::SDB::Attribute {
  use Moose;
  with ('AWS::API::ResultParser');
  has AlternateNameEncoding => (is => 'ro', isa => 'Str');
  has AlternateValueEncoding => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
}
1
