
package Aws::SNS::CreatePlatformApplication {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Platform => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlatformApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::CreatePlatformApplicationResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePlatformApplicationResult');
}
1;
