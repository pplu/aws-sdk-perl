package Paws::Inspector::ResourceGroup;
  use Moose;
  has resourceGroupArn => (is => 'ro', isa => 'Str');
  has resourceGroupTags => (is => 'ro', isa => 'Str');
1;
