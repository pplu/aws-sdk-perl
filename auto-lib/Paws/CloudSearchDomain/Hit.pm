package Paws::CloudSearchDomain::Hit {
  use Moose;
  has fields => (is => 'ro', isa => 'Paws::CloudSearchDomain::Fields');
  has highlights => (is => 'ro', isa => 'Paws::CloudSearchDomain::Highlights');
  has id => (is => 'ro', isa => 'Str');
}
1;
