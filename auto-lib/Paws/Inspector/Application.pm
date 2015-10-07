package Paws::Inspector::Application;
  use Moose;
  has applicationArn => (is => 'ro', isa => 'Str');
  has applicationName => (is => 'ro', isa => 'Str');
  has resourceGroupArn => (is => 'ro', isa => 'Str');
1;
