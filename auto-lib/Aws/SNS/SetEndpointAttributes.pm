
package Aws::SNS::SetEndpointAttributes {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString', required => 1);
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetEndpointAttributes');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
  