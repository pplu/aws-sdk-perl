
package Paws::Config::DescribeConfigurationRecorderStatus {
  use Moose;
  has ConfigurationRecorderNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationRecorderStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DescribeConfigurationRecorderStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;