
package Aws::SNS::ListEndpointsByPlatformApplication {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEndpointsByPlatformApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::ListEndpointsByPlatformApplicationResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListEndpointsByPlatformApplicationResult');
}
1;
  