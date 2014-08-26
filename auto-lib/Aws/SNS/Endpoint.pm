package Aws::SNS::Endpoint {
  use Moose;
  with ('AWS::API::ResultParser');
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString');
  has EndpointArn => (is => 'ro', isa => 'Str');
}
1
