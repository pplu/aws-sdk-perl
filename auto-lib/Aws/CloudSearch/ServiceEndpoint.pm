package Aws::CloudSearch::ServiceEndpoint {
  use Moose;
  with ('AWS::API::ResultParser');
  has Endpoint => (is => 'ro', isa => 'Str');
}
1
