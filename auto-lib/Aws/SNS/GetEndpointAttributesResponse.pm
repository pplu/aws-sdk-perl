
package Aws::SNS::GetEndpointAttributesResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString');

}
1;