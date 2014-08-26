package Aws::OpsWorks::StackAttributes {
  use Moose;
  with 'AWS::API::MapParser';
  has Color => (is => 'ro', isa => 'Str');
}
1
