package Aws::SNS::Endpoint {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString');
  has EndpointArn => (is => 'ro', isa => 'Str');
}
1;
