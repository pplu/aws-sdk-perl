package Aws::DirectConnect::RouteFilterPrefix {
  use Moose;
  has cidr => (is => 'ro', isa => 'Str');
}
1;
