package Paws::RDS::DomainMembership {
  use Moose;
  has Connectivity => (is => 'ro', isa => 'Str');
  has Domain => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}
1;
