
package Aws::SNS::CreatePlatformEndpoint {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString');
  has CustomUserData => (is => 'ro', isa => 'Str');
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);
  has Token => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlatformEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::CreatePlatformEndpointResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePlatformEndpointResult');
}
1;
  