
package Aws::SNS::GetPlatformApplicationAttributes {
  use Moose;
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPlatformApplicationAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::GetPlatformApplicationAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetPlatformApplicationAttributesResult');
}
1;
  