package Aws::EC2::Region {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Endpoint => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'regionEndpoint');
  has RegionName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'regionName');
}
1
