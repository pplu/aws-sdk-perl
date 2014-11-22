package Paws::OpsWorks::StackAttributes {
  use Moose;
  with 'Paws::API::MapParser';
  has Color => (is => 'ro', isa => 'Str');
}
1;
