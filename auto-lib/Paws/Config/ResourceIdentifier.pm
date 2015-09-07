package Paws::Config::ResourceIdentifier {
  use Moose;
  has resourceDeletionTime => (is => 'ro', isa => 'Str');
  has resourceId => (is => 'ro', isa => 'Str');
  has resourceName => (is => 'ro', isa => 'Str');
  has resourceType => (is => 'ro', isa => 'Str');
}
1;
