
package Aws::SNS::GetEndpointAttributes {
  use Moose;
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEndpointAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::GetEndpointAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetEndpointAttributesResult');
}
1;