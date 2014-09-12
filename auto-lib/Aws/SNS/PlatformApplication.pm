package Aws::SNS::PlatformApplication {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString');
  has PlatformApplicationArn => (is => 'ro', isa => 'Str');
}
1
