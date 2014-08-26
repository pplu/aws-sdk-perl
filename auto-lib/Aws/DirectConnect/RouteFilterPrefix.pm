package Aws::DirectConnect::RouteFilterPrefix {
  use Moose;
  with ('AWS::API::ResultParser');
  has cidr => (is => 'ro', isa => 'Str');
}
1
